/*
 * @LastEditors: John
 * @Date: 2024-03-21 10:42:25
 * @LastEditTime: 2024-05-30 10:26:05
 * @Author: John
 */
import Head from "next/head";

import styles from "../styles/Home.module.css";

export default function Home() {
  return (
    <div className={styles.container}>
      <Head>
        <title>neer app update server</title>
        <link rel="icon" href="/favicon.ico" />
      </Head>

      <main className={styles.main}>
        <h1 className={`${styles.title}`}>neer app update server</h1>

        <p className={`${styles.description}`}>env: {process.env.NODE_ENV}</p>
      </main>
    </div>
  );
}
