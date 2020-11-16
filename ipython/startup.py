# See also:
# https://docs.python.org/3/using/cmdline.html#envvar-PYTHONSTARTUP

try:
    import numpy as np
    import xarray as xr
    import pandas as pd
except ImportError as e:
    ...
