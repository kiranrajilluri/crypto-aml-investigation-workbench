\# Typology Brief: Pig-Butchering Scam Layering



\## What It Is

Pig-butchering is a long-term social engineering scam where criminals build a relationship with a victim — romantic or as a "mentor" — and introduce them to a fake crypto investment platform. The victim is allowed to withdraw small amounts early to build trust, then encouraged to deposit increasingly large sums. When they try to withdraw the full balance, they're blocked with demands for "taxes" or "fees." The funds were already moved out of the platform wallet long before the victim realizes.



\## Typical Fund Flow

Victim wallets -> scam collection wallet(s) (fan-in consolidation) -> conversion to USDT -> mixer (trail broken) or cross-chain bridge -> dispersion across multiple mule wallets -> CEX deposit address (cash-out)



\## Red Flags (SQL-Detectable)

1\. \*\*Fan-in:\*\* 5+ unique addresses sending to one wallet within 7 days

2\. \*\*Rapid pass-through:\*\* funds in is approximately equal to funds out within 48 hours

3\. \*\*Mixer interaction:\*\* counterparty is a known mixer address

4\. \*\*Exchange cash-out:\*\* funds reach a known CEX deposit address

5\. \*\*Structuring:\*\* multiple transfers just below reporting thresholds



\## What an Investigator Does

1\. Identify the scam wallet from victim reports or on-chain patterns

2\. Trace the fan-in to map the victim pool

3\. Follow the consolidation flow to the mixer/bridge

4\. Identify the cash-out exchange

5\. Write SAR with chronological trail



\## Data Sources I'll Use

\- OFAC SDN crypto address list (sanctioned addresses)

\- Etherscan (public transaction data)

\- Arkham / MetaSleuth (entity labels and tracing)



\## Why I Chose This Typology

It's the highest-volume crypto crime, the flow pattern is clear and well-documented, and every exchange compliance team is actively looking for analysts who understand it.

