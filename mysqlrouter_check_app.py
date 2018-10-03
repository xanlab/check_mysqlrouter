import web
import subprocess

urls = (
    '/', 'index'
)

class index:
    def GET(self):
        p = subprocess.Popen(["service", "mysqlrouter", "status"], stdout=subprocess.PIPE)
        out, err = p.communicate()
        if ('active (running)' in str(out)):
                return 'mysqlrouter is running'
        else:
                return web.HTTPError(403)

if __name__ == "__main__":
    app = web.application(urls, globals())
    app.run()
