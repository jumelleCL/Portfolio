import random

MAX_LINEAS = 3
APUESTA_MAX = 100
APUETSA_MIN = 1

FILAS = 3
COLS = 3

cuenta_simbols = {
    "A": 2,
    "B": 4,
    "C": 6,
    "D": 8
}

valor_simbols = {
    "A": 5,
    "B": 4,
    "C": 3,
    "D": 2
}


def check_ganadas(columnas, lineas, bet, values):
    ganadas = 0
    lineas_ganadas = []
    for linea in range(lineas):
        symbol = columnas[0][linea]
        for column in columnas:
            symbol_to_check = column[linea]
            if symbol != symbol_to_check:
                break
        else:
            ganadas += values[symbol] * bet
            lineas_ganadas.append(linea + 1)

    return ganadas, lineas_ganadas


def get_maquina(fila, cols, symbols):
    all_symbols = []
    for symbol, symbol_count in symbols.items():
        for _ in range(symbol_count):
            all_symbols.append(symbol)

    columns = []
    for _ in range(cols):
        column = []
        current_symbols = all_symbols[:]
        for _ in range(fila):
            value = random.choice(current_symbols)
            current_symbols.remove(value)
            column.append(value)

        columns.append(column)

    return columns


def print_maquina(columns):
    for row in range(len(columns[0])):
        for i, column in enumerate(columns):
            if i != len(columns) - 1:
                print(column[row], end=" | ")
            else:
                print(column[row], end="")

        print()


def deposit():
    while True:
        amount = input("Cuanto te gustaria depositar? $")
        if amount.isdigit():
            amount = int(amount)
            if amount > 0:
                break
            else:
                print("El deposito debe ser mayor a 0.")
        else:
            print("Porfavor ingrese un número.")

    return amount


def get_lineas():
    while True:
        lines = input(
            "Ingrese su cant de apuestas (1-" + str(MAX_LINEAS) + ")? ")
        if lines.isdigit():
            lines = int(lines)
            if 1 <= lines <= MAX_LINEAS:
                break
            else:
                print("Ingrese una cantidad válida.")
        else:
            print("Porfavor ingrese un número.")

    return lines


def get_bet():
    while True:
        amount = input("Cuanto quiere apostar en cada linea? $")
        if amount.isdigit():
            amount = int(amount)
            if APUETSA_MIN <= amount <= APUESTA_MAX:
                break
            else:
                print(f"La cantidad debe de ser entre ${APUETSA_MIN} - ${APUESTA_MAX}.")
        else:
            print("Porfavor ingrese un número.")

    return amount


def spin(balance):
    lines = get_lineas()
    while True:
        bet = get_bet()
        total_bet = bet * lines

        if total_bet > balance:
            print(
                f"No tenés la cantidad suficiente para apostar, actualmente tenés: ${balance}")
        else:
            break

    print(
        f"Estas apostando ${bet} en {lines} lineas. La apuesta total es de: ${total_bet}")

    slots = get_maquina(FILAS, COLS, cuenta_simbols)
    print_maquina(slots)
    winnings, winning_lines = check_ganadas(slots, lines, bet, valor_simbols)
    print(f"Ganaste ${winnings}.")
    print(f"Total lineas ganadas:", *winning_lines)
    return winnings - total_bet


def main():
    balance = deposit()
    while True:
        print(f"Tu saldo actual es ${balance}")
        answer = input("Presiona enter para jugar(q para salir).")
        if answer == "q":
            break
        balance += spin(balance)

    print(f"Te fuiste con ${balance}")


main()

