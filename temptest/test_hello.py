import httplib2


def get(url):
    h = httplib2.Http()
    resp, cont = h.request(url)
    return resp.status


def test_hello():
    url = "http://192.168.185.78:6000/"
    status = get(url)
    if status != 200:
        print("test hello failed.")
        return False
    print("test hello successed.")
    return True


if __name__ == "__main__":
    test_hello()
