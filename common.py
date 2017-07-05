# 把JSON数据放在对象中
class JSONObject:
    def __init__(self, d):
        self.__dict__ = d
