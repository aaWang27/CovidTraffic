import numpy as np
import pandas as pd

OUTPUT_PATH = 'output'
EPOCHS = 1000
BS = 5
EARLY_STOPPING_PATIENCE = 10
SEQ_LEN = 1
PRE_LEN = 1
INPUT_SHAPE = (1, 12)
TOTAL_ADJACENT_MATRIX = np.asmatrix(pd.read_csv('../Data/DirectedAM.csv').values[:, 1:])
