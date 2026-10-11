/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.ui.WorkbenchEncoding
 *  org.eclipse.ui.part.IPageBookViewPage
 */
package org.eclipse.ui.console;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.ui.WorkbenchEncoding;
import org.eclipse.ui.console.IConsoleDocumentPartitioner;
import org.eclipse.ui.console.IConsoleView;
import org.eclipse.ui.console.IOConsoleInputStream;
import org.eclipse.ui.console.IOConsoleOutputStream;
import org.eclipse.ui.console.TextConsole;
import org.eclipse.ui.internal.console.IOConsolePage;
import org.eclipse.ui.internal.console.IOConsolePartitioner;
import org.eclipse.ui.part.IPageBookViewPage;

public class IOConsole
extends TextConsole {
    private IOConsolePartitioner partitioner;
    private IOConsoleInputStream inputStream;
    private List openStreams;
    private String fEncoding = WorkbenchEncoding.getWorkbenchDefaultEncoding();

    public IOConsole(String name, String consoleType, ImageDescriptor imageDescriptor, boolean autoLifecycle) {
        this(name, consoleType, imageDescriptor, null, autoLifecycle);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IOConsole(String name, String consoleType, ImageDescriptor imageDescriptor, String encoding, boolean autoLifecycle) {
        super(name, consoleType, imageDescriptor, autoLifecycle);
        if (encoding != null) {
            this.fEncoding = encoding;
        }
        this.openStreams = new ArrayList();
        this.inputStream = new IOConsoleInputStream(this);
        List list = this.openStreams;
        synchronized (list) {
            this.openStreams.add(this.inputStream);
        }
        this.partitioner = new IOConsolePartitioner(this.inputStream, this);
        this.partitioner.connect(this.getDocument());
    }

    public IOConsole(String name, String consoleType, ImageDescriptor imageDescriptor) {
        this(name, consoleType, imageDescriptor, true);
    }

    public IOConsole(String name, ImageDescriptor imageDescriptor) {
        this(name, null, imageDescriptor);
    }

    public IPageBookViewPage createPage(IConsoleView view) {
        return new IOConsolePage(this, view);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IOConsoleOutputStream newOutputStream() {
        IOConsoleOutputStream outputStream = new IOConsoleOutputStream(this);
        outputStream.setEncoding(this.fEncoding);
        List list = this.openStreams;
        synchronized (list) {
            this.openStreams.add(outputStream);
        }
        return outputStream;
    }

    public IOConsoleInputStream getInputStream() {
        return this.inputStream;
    }

    protected IConsoleDocumentPartitioner getPartitioner() {
        return this.partitioner;
    }

    public int getHighWaterMark() {
        return this.partitioner.getHighWaterMark();
    }

    public int getLowWaterMark() {
        return this.partitioner.getLowWaterMark();
    }

    public void setWaterMarks(int low, int high) {
        if (low >= 0 && low >= high) {
            throw new IllegalArgumentException("High water mark must be greater than low water mark");
        }
        this.partitioner.setWaterMarks(low, high);
    }

    private void checkFinished() {
        if (this.openStreams.isEmpty()) {
            this.partitioner.streamsClosed();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void streamClosed(IOConsoleOutputStream stream) {
        List list = this.openStreams;
        synchronized (list) {
            this.openStreams.remove(stream);
            this.checkFinished();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void streamClosed(IOConsoleInputStream stream) {
        List list = this.openStreams;
        synchronized (list) {
            this.openStreams.remove(stream);
            this.checkFinished();
        }
    }

    public void clearConsole() {
        if (this.partitioner != null) {
            this.partitioner.clearBuffer();
        }
    }

    protected void dispose() {
        super.dispose();
        this.partitioner.disconnect();
        Object[] allStreams = this.openStreams.toArray();
        int i = 0;
        while (i < allStreams.length) {
            Object stream = allStreams[i];
            if (stream instanceof IOConsoleInputStream) {
                IOConsoleInputStream is = (IOConsoleInputStream)stream;
                try {
                    is.close();
                }
                catch (IOException iOException) {}
            } else if (stream instanceof IOConsoleOutputStream) {
                IOConsoleOutputStream os = (IOConsoleOutputStream)stream;
                try {
                    os.close();
                }
                catch (IOException iOException) {}
            }
            ++i;
        }
        this.inputStream = null;
    }

    public String getEncoding() {
        return this.fEncoding;
    }
}

