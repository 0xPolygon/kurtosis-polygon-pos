# Pre-funded accounts

The package prefunds some Ethereum and Tendermint accounts to make the validator setup easier and faster.

Here are the commands to generate such accounts.

First, start a docker container that contains the different utils such as `polycli`, `jq` and `heimdallcli`.

```bash
docker run -it --rm --volume "$(pwd):/tmp" --workdir /tmp leovct/pos-validator-config-generator:1.2.3-0.2.0 bash
```

Inside the docker container, execute the following script to generate the accounts.

In this example, we are going to generate 20 accounts using the following mnemonic.

Please be aware that the process may take some time; the more accounts that need to be generated, the longer it will take!

```bash
export ACCOUNTS_NUMBER=1000
export MNEMONIC="sibling lend brave explain wait orbit mom alcohol disorder message grace sun"
bash generate.sh
```

You will notice that executing the script will update the `accounts.star` file with the new accounts you just generated.

You can now run the package and those accounts will already be pre-funded.
