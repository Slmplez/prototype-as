/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.ui.console.ConsolePlugin
 *  org.eclipse.ui.console.IConsole
 *  org.eclipse.ui.console.IConsoleFactory
 *  org.eclipse.ui.console.IConsoleManager
 *  org.eclipse.ui.console.MessageConsole
 *  org.eclipse.ui.console.MessageConsoleStream
 */
package com.etas.ascet.importer.a2a.ui;

import java.io.OutputStream;
import java.io.PrintStream;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsole;
import org.eclipse.ui.console.IConsoleFactory;
import org.eclipse.ui.console.IConsoleManager;
import org.eclipse.ui.console.MessageConsole;
import org.eclipse.ui.console.MessageConsoleStream;

public class ConsoleFactory
implements IConsoleFactory {
    public static MessageConsole console = new MessageConsole("Autosar To Ascet Importer", null);

    public void openConsole() {
        ConsoleFactory.showConsole();
    }

    public static void showConsole() {
        if (console != null) {
            IConsoleManager manager = ConsolePlugin.getDefault().getConsoleManager();
            IConsole[] existing = manager.getConsoles();
            boolean exists = false;
            int i = 0;
            while (i < existing.length) {
                if (console == existing[i]) {
                    exists = true;
                }
                ++i;
            }
            if (!exists) {
                manager.addConsoles(new IConsole[]{console});
            }
            manager.showConsoleView((IConsole)console);
            MessageConsoleStream stream = console.newMessageStream();
            System.setOut(new PrintStream((OutputStream)stream));
        }
    }

    public static void closeConsole() {
        IConsoleManager manager = ConsolePlugin.getDefault().getConsoleManager();
        if (console != null) {
            manager.removeConsoles(new IConsole[]{console});
        }
    }

    public static MessageConsole getConsole() {
        return console;
    }
}

