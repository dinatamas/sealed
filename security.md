Threat Model
============

Email
-----
* Important email: For services from which I read emails.
* Throwaway email
  * For untrusted and unimportant services.
  * Do not forget to log in sometimes.
* Try not to depend on a single provider.
  * Email forwarding protocols?
* Notifier email: Auto-compose emails to another email address on phone.

Passwords
---------
* Bitwarden website.
  * Compromised: malicious client code update.
  * Peppering: Only for trusted services.
  * Offline copy.
  * Master password: memorized (and offline copy).
* Bitwarden app.
  * Different account only for unimportant services.
  * Offline database export for backup.
  * Master password: in the important password manager.
* Memorable word passwords?
* Rotate passwords?

> How do I defend against keyloggers?
> Important accounts are only opened in the `sealed` environment.
> Can the computer firmware / keyboard hardware be compromised?
> Consider some hardware fuzzer which gets filtered in software?

Multi-Factor Auth
-----------------
* Use in as many places as possible!
* Yubikey or my own signing USB.
* Always use 2FA, but for unimportant services: phone app.
* Do not stay signed in for important services.
* Recovery keys: important ones on paper, others in Bitwarden.
  * Engrave in steel: survives fires.
* Security questions: random answers?

Cryptographic Keys
------------------
* Use passphrases to secure keys.
* SSH
  * Rotate keys?
* GPG
  * Offline signing.
* Cryptocurrency
  * Offline signing.
  * Hardware wallet?
  * Paper wallet?
  * Secret recovery phase: paper-only.
* Engrave in steel: survives fires.

Disposable
----------
* `sealed`: Amnestic and secure Arch system.
* `sharp`: Plug-and-hack Kali system.
* Custom offline signing system?
* Paper copies: some sort of manual obfuscation.
  * Peppering, substitution ciphers, order changes.

Daily Driver
------------
* The Arch Linux environment from my `dotfiles`.
* Physical security: no recovery root shell, encrypted drives.
* Backups!

Phone
-----
* Consider already hacked.
* Password manager for less important services.
* 2FA for less important services.
* Do not use for important services.
  * Only apps that I sort of must use.

Home Network
------------
* TODO

Privacy
-------
* VPN?
* Tor?
* Torrenting?

Identity Management
-------------------
* Reserve my typical user names for as many services as possible.

Sources
-------
* [Crypto Guide](https://support.exodus.com/article/767-how-do-i-keep-my-money-safe)
* [Password peppering](https://passwordbits.com/salting-passwords/)
* [2FA Methods](https://passwordbits.com/hierarchy-of-2fa/)
* [Tails for Crypto ](https://www.youtube.com/watch?v=SztQ_YdTD2s)
* [Tails for Crypto 2](https://www.youtube.com/watch?v=ZYpi4A20_lQ)
* [Paper Wallet](https://www.gemini.com/cryptopedia/paper-wallet-crypto-cold-storage)
* [Steel Backups](https://www.youtube.com/watch?v=3Aj_EHOu9WE)
* [Important VS Non-Important](https://passwordbits.com/2-password-manager/)
* [Bitwarden Security](https://passwordbits.com/trust-password-managers/)
