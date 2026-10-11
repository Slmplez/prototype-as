export function compileRegex(query: string, sensitive: boolean, dotall = false): RegExp {
  try {
    // m anchors at line boundaries. Whether a match may consume a newline is
    // controlled by scanning individual logical lines or the entire document.
    return new RegExp(query.replace(/\r\n?/g, '\n'), 'gmu' + (sensitive ? '' : 'i') + (dotall ? 's' : ''));
  } catch (error) {
    throw new Error('Invalid regular expression: ' + (error instanceof Error ? error.message : String(error)));
  }
}

export class ToolError extends Error {
  constructor(public readonly code: string, message: string) { super(message); this.name = 'ToolError'; }
}
