# Exchange Rates Management Program for Aleo

## Overview

This Leo program is an integral part of the Aleo blockchain ecosystem, designed to maintain and provide access to currency exchange rates. With the capacity to retrieve and set exchange rates between a variety of currencies, this program ensures that users can perform reliable and secure currency conversions on-chain.

## Currency IDs

The program uses unique identifiers (IDs) for each currency. Below is the list of supported currencies along with their respective IDs:

| ID   | Currency           |
|------|--------------------|
| 0u16 | US Dollar          |
| 1u16 | Euro               |
| 2u16 | British Pound      |
| 3u16 | Japanese Yen       |
| 4u16 | Canadian Dollar    |
| 5u16 | Australian Dollar  |
| 6u16 | Swiss Franc        |
| 7u16 | Chinese Yuan       |
| 8u16 | Swedish Krona      |
| 9u16 | New Zealand Dollar |

## Features

- **Get Exchange Rate**: Retrieve the current exchange rate between any two supported currencies.
    - `get_exchange_rate(currency1ID: u16, currency2ID: u16) -> field`
- **Set Exchange Rate**: Establish or update the exchange rate for a given currency.
    - `set_exchange_rate(currencyID: u16, rate: field)`
- **Convert**: Convert an amount from one currency to another using the current exchange rates.
    - `convert(currency1ID: u16, currency2ID: u16, amount: field) -> field`

## Blockchain Integrity

All exchange rates are stored on the Aleo blockchain, ensuring transparency and immutability. Rates can be updated on the blockchain, which provides a trustworthy and verifiable source of data for all users.

## Significance for Aleo Ecosystem

This project is paramount for Aleo's ecosystem, offering a decentralized and secure way to manage and utilize currency exchange rates. It empowers users to:

- Execute cross-border transactions with accurate conversion rates.
- Develop decentralized finance (DeFi) applications that require currency conversions.
- Ensure fair and transparent access to global financial markets.

By leveraging the immutable nature of blockchain technology, this program provides a foundation for building trust and efficiency in financial operations on the Aleo platform.

## Helping Blockchain Users

The availability of a reliable exchange rate program aids users in:

- Making informed financial decisions with up-to-date and accurate exchange rates.
- Reducing the risk of fraud or manipulation in currency conversions.
- Participating in the global economy with confidence in the underlying blockchain technology.

Through the use of this program, the Aleo ecosystem becomes more robust, versatile, and user-friendly for blockchain participants worldwide.
