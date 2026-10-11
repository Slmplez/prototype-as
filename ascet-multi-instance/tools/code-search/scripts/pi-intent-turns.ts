/** Advance only at Pi's stable boundary, preserving one process and tool connection. */
export class PiIntentTurns {
  private index = 0;
  private pending = true;
  private finished = false;
  readonly answers: { turn: number; final_text: string; stop_reason: string }[] = [];
  constructor(readonly prompts: string[], private readonly send: (command: unknown) => void, private readonly close: () => void) {
    if (prompts.length < 2 || prompts.some(prompt => !prompt.trim())) throw new Error('A conversation needs at least two nonempty prompts');
  }
  get turn() { return this.index + 1; }
  start() { this.send({ id: 'turn-1', type: 'prompt', message: this.prompts[0] }); }
  settled(final_text: string, stop_reason: string): boolean {
    if (!this.pending || this.finished) return this.finished;
    this.pending = false;
    this.answers.push({ turn: this.turn, final_text, stop_reason });
    if (stop_reason !== 'stop' || this.index + 1 === this.prompts.length) {
      this.finished = true; this.close(); return true;
    }
    this.index++; this.pending = true;
    this.send({ id: 'turn-' + this.turn, type: 'prompt', message: this.prompts[this.index] });
    return false;
  }
}
