/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.part.IPageBookViewPage
 */
package org.eclipse.ui.console;

import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.console.IConsoleConstants;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.IOConsole;
import org.eclipse.ui.console.IOConsoleInputStream;
import org.eclipse.ui.console.MessageConsoleStream;
import org.eclipse.ui.internal.console.IOConsolePage;
import org.eclipse.ui.part.IPageBookViewPage;

public class MessageConsole
extends IOConsole {
    public static final String P_FONT = IConsoleConstants.P_FONT;
    public static final String P_STREAM_COLOR = IConsoleConstants.P_STREAM_COLOR;
    public static final String P_TAB_SIZE = IConsoleConstants.P_TAB_SIZE;
    public static final int DEFAULT_TAB_SIZE = 8;

    public MessageConsole(String name, ImageDescriptor imageDescriptor) {
        this(name, imageDescriptor, true);
    }

    public MessageConsole(String name, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        this(name, "org.eclipse.ui.MessageConsole", imageDescriptor, autoLifecycle);
    }

    public MessageConsole(String name, String consoleType, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        this(name, consoleType, imageDescriptor, null, autoLifecycle);
    }

    public MessageConsole(String name, String consoleType, ImageDescriptor imageDescriptor, String encoding, boolean autoLifecycle) {
        super(name, consoleType, imageDescriptor, encoding, autoLifecycle);
    }

    public MessageConsoleStream newMessageStream() {
        return new MessageConsoleStream(this);
    }

    public IPageBookViewPage createPage(IConsoleView view) {
        IOConsolePage page = (IOConsolePage)super.createPage(view);
        page.setReadOnly();
        return page;
    }

    public IOConsoleInputStream getInputStream() {
        throw new UnsupportedOperationException("Message Console does not support user input");
    }

    protected void appendToDocument(String text, MessageConsoleStream stream) {
    }
}

