-- need to install python debugger adapter to work
-- python -m venv path/to/virtualenvs/debugpy
-- path/to/virtualenvs/debugpy/bin/python -m pip install debugpy
require('dap-python').setup('~/Downloads/debugpy/bin/python')
