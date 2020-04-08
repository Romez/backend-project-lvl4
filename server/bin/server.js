#! /usr/bin/env node

import dotenv from 'dotenv';
import createApp from '../app';

dotenv.config();
const app = createApp();

const port = process.env.PORT || 3000;

app.listen(port, () => {
  console.log(`Running on port ${port}`);
});
