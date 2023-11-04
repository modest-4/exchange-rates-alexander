// The 'exchange_rates' program.
program exchange_rates.aleo {
    mapping rates: u16 => field;

    transition get_exchange_rate(currency1ID: u16, currency2ID: u16) -> field {
        return then finalize(currency1ID, currency2ID);
    }

    finalize get_exchange_rate (currency1ID: u16, currency2ID: u16) -> field {
        Mapping::get_or_use(rates, currency1ID, 0field) / Mapping::get_or_use(rates, currency2ID, 1field);
    }

    transition set_exchange_rate(currencyID: u16, rate: field) {
        return then finalize(currencyID, rate);
    }

    finalize set_exchange_rate(currencyID: u16, rate: field) {
        Mapping::set(rates, currencyID, rate);
    }

    transition convert (currency1ID: u16, currency2ID: u16, amount: field) -> field {
        return then finalize(currency1ID, currency2ID, amount);
    }

    finalize convert(currency1ID: u16, currency2ID: u16, amount: field) -> field {
        amount * get_exchange_rate(currency1ID, currency2ID);
    }
}
