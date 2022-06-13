import argparse
import pandas as pd


def __main__(args: list[str] = None) -> None:
    parser = argparse.ArgumentParser(description="print summary statistics of the given CSV file")
    parser.add_argument("filename", help="path to a CSV file")
    args = parser.parse_args(args)

    data = pd.read_csv(args.filename)
    print(data.describe())


if __name__ == "__main__":
    __main__()
