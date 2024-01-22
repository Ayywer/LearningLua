print("O to kalkulator podatkow")

print("Podaj mi cene: ")
local price = io.read();

print("Teraz podaj wysokosc podatku: ")
local taxRate = io.read();

local tax = taxRate / 100
local taxAmount = tax * price

print("Cena bez podatku wynosi " ..price)
print("Cena z podatkiem wynosi: " ..price + taxAmount)
print("Wartosc podatku wynosi: " ..taxAmount)
