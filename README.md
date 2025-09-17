<!--
SPDX-FileCopyrightText: 2022-2025 Sidings Media <contact@sidingsmedia.com>
SPDX-License-Identifier: MIT
-->

# Unified Control

## What is it?

Unified control is Sidings Media's internal centralised control panel.

## What isn't it?

Unified control isn't designed to be a plug and play system. It is
heavily customised to our needs. Whilst there are some parts of it you
may find useful as standalone services, it is likely you would struggle
to use the frontend.

## Components

- [unified-control-frontend](https://github.com/SidingsMedia/unified-control-frontend)
  The frontend web interface
- [unified-control-rdns](https://github.com/SidingsMedia/unified-control-rdns)
  Recursive DNS management service. Interacts with
  [TechnitiumSoftware/DnsServer](https://github.com/TechnitiumSoftware/DnsServer)
  to manage recursive DNS features.

## Licence

This repo uses the [REUSE](https://reuse.software) standard in order to
communicate the correct licence for the file. For those unfamiliar with
the standard the licence for each file can be found in one of three
places. The licence will either be in a comment block at the top of the
file, in a `.license` file with the same name as the file, or in the
dep5 file located in the `.reuse` directory. If you are unsure of the
licencing terms please contact
[legal@sidingsmedia.com](mailto:legal@sidingsmedia.com?subject=Licensing%3A%20DNS%20Control%20Microservice).
All files committed to this repo must contain valid licencing
information or the pull request can not be accepted.
