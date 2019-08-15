# coding:utf-8
import xlrd
import pymysql

# 连接mysql
def get_connect(host,user,passwd,db,port):
    conn = pymysql.connect(
        host=host,
        user=user,
        passwd=passwd,
        db=db,
        port=port,
        charset='utf8')
    return conn


def get_category(host,user,passwd,db,port):
    # 获得游标
    conn = get_connect(host,user,passwd,db,port)
    cur = conn.cursor()
    # 获取category字典
    sql = "SELECT id,`name` FROM t_category WHERE `is_deleted` = 0"
    cur.execute(sql)
    results = cur.fetchall()
    dict = {}
    for row in results:
        id = row[0]
        name = row[1]
        dict[name] = id
    cur.close()
    return dict


def main(file,host,user,passwd,db,port):
    dict = get_category(host,user,passwd,db,port)
    data = xlrd.open_workbook(file)
    table = data.sheets()[0]  # 打开第一张表
    nrows = table.nrows  # 获取总行数

    print('正在连接数据库')
    try:
        conn = get_connect(host,user,passwd,db,port)
        conn.autocommit(False)
        cursor = conn.cursor()
    except BaseException as e:
        print('连接失败:', e)

    print('开始插入')

    # 忽略第一行
    for i in range(1, nrows):
        # categoryId
        id = dict.get(table.row_values(i)[0])

        # 参数类型
        param_type = 0
        if (table.row_values(i)[1] == '销售属性'):
            param_type = 2
        if (table.row_values(i)[1] == '参数属性'):
            param_type = 1

        # 参数名称
        name = table.row_values(i)[2]
        inputType = 0
        # 输入方式
        if (table.row_values(i)[3] == '输入框'):
            inputType = 1
        if (table.row_values(i)[3] == '单选框'):
            inputType = 2
        if (table.row_values(i)[3] == '多选框'):
            inputType = 3

        #属性值
        value = table.row_values(i)[4]
        # 属性排序
        sort = table.row_values(i)[5]

        # 是否必选
        required = table.row_values(i)[6]

        # 参与搜索
        searchable = table.row_values(i)[7]

        # 属性状态
        status = table.row_values(i)[8]

        param_sql = 'INSERT INTO t_category_param (category_id,`name`,input_type,sort,`type`,searchable,required,status) VALUES ' \
                    + ('(%s,\'%s\',%s,%s,%s,%s,%s,%s)' %(id, name, inputType, sort, param_type, searchable, required, status))
        cursor.execute(param_sql)

        value_sql = 'INSERT INTO t_category_param_value (category_id,param_id,`value`) VALUES '
        #没有属性值不插入value
        if len(value)!=0:
            value=value.split('、')
            for i in value:
                value_sql=value_sql + '(%s,%s,\'%s\')' %(id,cursor.lastrowid,i)+','
            value_sql=value_sql[:-1]
            print(value_sql)
            cursor.execute(value_sql)
    print('开始提交...')
    conn.commit()
    print('提交成功')
    print('关闭数据库连接...')
    conn.close()

if __name__ == "__main__":
    main('C://Users/Administrator/Desktop/1.xlsx','localhost','root','root','fanqiepinpin_v2',3306)
