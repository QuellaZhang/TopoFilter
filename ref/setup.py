from distutils.core import setup, Extension

module1 = Extension('PythonGraphPers_withCompInfo',
                    include_dirs = ['../pybind11/include'],
                    extra_compile_args = ["-wd4101", "-wd4267", "-wd4244", "-wd4101", "-wd4996"],
                    sources = ['pythonGraphTopoFix_withCompInfo.cpp'])

setup (name = 'PackageName',
       version = '1.0',
       description = 'This is a demo package',
       ext_modules = [module1])
