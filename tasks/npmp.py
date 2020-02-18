from json import loads
import os

rows, cols = os.popen('stty size', 'r').read().split()
cols = int(cols)

file = open('./package.json').read()
package = loads(file)

deps = package.get('dependencies')
devdeps = package.get('devDependencies', {})

keys = [key for key in deps] + [key for key in devdeps]

def getmaxkey(keys):
    m = keys[0]
    for key in keys:
        m = m if len(m) > len(key) else key
    return m

maxlen = len(getmaxkey(keys))

def pad(key):
    return key + ' ' * (0 if len(key) >= maxlen else maxlen - len(key))

def body(msg, pad):
    point = pad + 5
    allowed = cols - point

    if len(msg) > allowed:
        return [msg[:allowed - 5], ' ' * (point + 4) + msg[allowed - 5:]]
    return msg

def row(key, f):
    drawkey = pad(key)
    drawbody = body(f[key], len(key))

    if isinstance(drawbody, str):
        return '{0} --- {1}'.format(drawkey, drawbody)
    else:
        return '{0} --- {1}\n{2}'.format(drawkey, drawbody[0], drawbody[1])

table = '\n'.join([
    'DEPS',
    '\n'.join([row(key, deps) for key in deps]),
    '\n',
    'DEVDEPS',
    '\n'.join([row(key, devdeps) for key in devdeps])
])

print(table)


