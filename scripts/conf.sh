if [ "$NETWORK" = "mainnet" ]; then
  # mainnet deployment
  # shellcheck source=conf/mainnet.sh
  . "${0%/*}/mainnet.sh"
elif [ "$NETWORK" = "kovan" ]; then
  # kovan deployment
  # shellcheck source=conf/kovan.sh
  . "${0%/*}/kovan.sh"
elif [ "$NETWORK" = "hevm" ]; then
  # hevm unit test deployment
  # shellcheck source=conf/hevm.sh
  . "${0%/*}/hevm.sh"
else
  echo "unknown network. Allowed values are: mainnet, kovan, hevm."
  exit 1
fi
