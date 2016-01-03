# The subsidy change shift from a block number to a number of emitted coins
# requires boilerplate code that is generated here
COIN = 100000000
half_reward = 10 * COIN
last_halvings = 0
last_quarterings = 0
last_coins_emitted = None
height = 0
coins_emitted = 0
# How many blocks before halving
SubsidyHalvingInterval = 788000
# How many blocks before quartering
SubsidyInterimInterval = 394000

# After 17 halvings bitmark no longer has a subsidy
while last_halvings < 18:
    # Mimick the c++ subsidy code as closely as possible
    halvings = int((height) / SubsidyHalvingInterval)
    quarterings = int((height + SubsidyInterimInterval) / SubsidyHalvingInterval)
    coins_to_emit = (half_reward >> halvings) + (half_reward >> quarterings)

    if quarterings != last_quarterings or halvings != last_halvings:
        if halvings == 18:
            print("return nFees; // total of {} coins emitted".format(coins_emitted))
        else:
            print("""if (emitted < {coins_emitted})  // Q {quarterings} H {halvings} height {height}
    return nFees + {last_coins_emitted};""".format(**locals()))
    last_quarterings = quarterings
    last_halvings = halvings
    coins_emitted += coins_to_emit
    last_coins_emitted = coins_to_emit

    height += 1
