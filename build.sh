mkdir -p build

NS_VERIFIER_FILENAME="./build/Netsparker_Enterprise_Verifier_Agent.tar"

if [ ! -f $NS_VERIFIER_FILENAME ]; then
  wget https://www.netsparkercloud.com/agents/downloadinternalauthverifier?downloadAgentPlatform=1 -O $NS_VERIFIER_FILENAME
fi

cp Dockerfile build/
cp appsetting.json build/

docker build -f build/Dockerfile -t netsparker-verifier-agent build/
