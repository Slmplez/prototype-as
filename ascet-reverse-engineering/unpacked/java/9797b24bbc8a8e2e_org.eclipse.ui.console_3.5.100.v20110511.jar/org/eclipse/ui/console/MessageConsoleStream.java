/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.ui.console;

import java.io.IOException;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IOConsoleOutputStream;
import org.eclipse.ui.console.MessageConsole;

public class MessageConsoleStream
extends IOConsoleOutputStream {
    private MessageConsole fMessageConsole;

    public MessageConsoleStream(MessageConsole console) {
        super(console);
        this.fMessageConsole = console;
    }

    public void print(String message) {
        try {
            this.write(message);
        }
        catch (IOException e) {
            ConsolePlugin.log(e);
        }
    }

    public void println() {
        try {
            this.write("\n");
        }
        catch (IOException e) {
            ConsolePlugin.log(e);
        }
    }

    public void println(String message) {
        this.print(String.valueOf(message) + "\n");
    }

    public MessageConsole getConsole() {
        return this.fMessageConsole;
    }
}

