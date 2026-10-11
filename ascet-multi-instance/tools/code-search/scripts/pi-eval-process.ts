import { execFile, type ExecFileOptions } from 'node:child_process';

/** Pi print mode waits for EOF on piped stdin, even with a positional prompt. */
export function runPiProcess(file: string, args: string[], options: Omit<ExecFileOptions, 'encoding'> = {}): Promise<{ stdout: string; stderr: string }> {
  return new Promise((accept, reject) => {
    const child = execFile(file, args, { ...options, encoding: 'utf8' }, (error, stdout, stderr) => {
      if (error) reject(Object.assign(error, { stdout, stderr }));
      else accept({ stdout, stderr });
    });
    child.stdin?.on('error', () => {});
    child.stdin?.end();
  });
}
