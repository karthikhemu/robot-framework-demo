import csv


# def readCsv_data(filename):
#     with open(filename) as csv_file:
#         csv_reader = csv.reader(csv_file)
#         for line in csv_reader:
#             data=line
#         return data

# filename = "C://development//robot-framework-demo//data//readcsv.py"
# def readCsv_data(filename):
#     with open(filename,'r') as csv_file:
#         csv_reader=csv.reader(csv_file)
#
#         for line in csv_reader:
#             print(line)
#             return line

# filename = "C://development//robot-framework-demo//data//data.csv"
# def readCsv_data(filename):
#     data = []
#     with open(filename,'r') as csv_file:
#         csv_reader = csv.reader(csv_file)
#
#         for line in csv_reader:
#             data.append(line)
#     return data

def readCsv_data(filename, row, column):
    with open(filename) as f:
        test_data = [line for line in csv.reader(f)]
    return test_data[int(row)][int(column)]


def get_row_counts(filename):
    with open(filename, "r") as f:
        reader = csv.reader(f, delimiter=",")
        data = list(reader)
        row_count = len(data)
        return row_count
