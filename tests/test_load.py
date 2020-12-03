import os
from ctypes import CDLL


def test_cdll(capsys):
    sysname = os.uname().sysname
    library = {'Linux': 'libwgrib2.so', 'Darwin': 'libwgrib2.dylib'}[sysname]
    lib = CDLL(library)
    # at this point, dependencies are resolved
    assert True
