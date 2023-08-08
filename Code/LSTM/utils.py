import pandas as pd
from sklearn import preprocessing
import matplotlib.pyplot as plt
import utils
import config


def format_data(data, weeks=2):
    X_total = data.values[:156, :]

    data = X_total[(60-weeks):, :]
    scaler, values = utils.scale(data)
    values = utils.series_to_supervised(values, n_in=weeks, n_out=1, dropnan=True).values

    y_scaler, y = utils.scale(data[:, 1].reshape((len(data), 1)))

    train = values[:88, :]
    valid = values[88:92]
    test = values[92:, :]

    features = 13
    obs = weeks*features

    y = values[:, -config.N_FEATURES:]

    X_train = train[:, :obs]
    y_train = train[:, -features:][:, 1]
    X_valid = valid[:, :obs]
    y_valid = valid[:, -features:][:, 1]
    X_test = test[:, :obs]
    y_test = test[:, -features:][:, 1]
    print(X_train.shape)
    X_train = X_train.reshape((X_train.shape[0], weeks, features))
    X_valid = X_valid.reshape((X_valid.shape[0], weeks, features))
    X_test = X_test.reshape((X_test.shape[0], weeks, features))
    print(X_train.shape)

    return X_train, y_train, X_valid, y_valid, X_test, y_test


def scale_y(data, weeks):
    X_total = data.values[:156, :]

    data = X_total[(60 - weeks):, :]
    scaler, values = utils.scale(data)
    values = utils.series_to_supervised(values, n_in=weeks, n_out=1, dropnan=True).values

    y_scaler, y = utils.scale(data[:, 1].reshape((len(data), 1)))
    features = 13

    y = values[:, -config.N_FEATURES:]

    return y_scaler, y


def save_plot(H, path):
    plt.style.use("ggplot")
    plt.figure()
    plt.plot(H.history["loss"], label="Train Loss")
    plt.plot(H.history["val_loss"], label="Val Loss")
    plt.title("Training and Validation Loss")
    plt.xlabel("Epoch #")
    plt.ylabel("Loss (Mean Squared Error)")
    plt.legend()
    plt.savefig(path)


def plot_predicted(true, predicted, title, path):
    plt.figure()
    plt.title(title)
    plt.plot(true, label='True')
    plt.plot(predicted, label='Predicted')
    plt.xlabel("Week")
    plt.ylabel("VMT")
    plt.legend()
    plt.savefig(path)


def series_to_supervised(data, n_in=1, n_out=1, dropnan=True):
    n_vars = 1 if type(data) is list else data.shape[1]
    df = pd.DataFrame(data)
    cols, names = list(), list()
    # input sequence (t-n, ... t-1)
    for i in range(n_in, 0, -1):
        cols.append(df.shift(i))
        names += [('var%d(t-%d)' % (j + 1, i)) for j in range(n_vars)]
    # forecast sequence (t, t+1, ... t+n)
    for i in range(0, n_out):
        cols.append(df.shift(-i))
        if i == 0:
            names += [('var%d(t)' % (j + 1)) for j in range(n_vars)]
        else:
            names += [('var%d(t+%d)' % (j + 1, i)) for j in range(n_vars)]
    # put it all together
    agg = pd.concat(cols, axis=1)
    agg.columns = names
    # drop rows with NaN values
    if dropnan:
        agg.dropna(inplace=True)
    return agg


def graph_data(df, groups):
    plt.figure()
    for group in groups:
        plt.plot(pd.to_datetime(df['Day']), df[group])
    plt.show()


def scale(X_total):
    scaler = preprocessing.MinMaxScaler(feature_range=(0, 1)).fit(X_total)
    X_total_scaled = scaler.transform(X_total)
    return scaler, X_total_scaled


def invert_scale(scaler, data):
    inv_data = scaler.inverse_transform(data)
    return inv_data
