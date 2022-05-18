import * as dotenv from 'dotenv';
import * as fs from 'fs';

function getConfig() {
  const config = dotenv.parse(
    fs.readFileSync(`env/${process.env.NODE_ENV}.env`),
  );
  return config;
}

const EnvConfig = getConfig();
export default EnvConfig;
