/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.debug.internal.core;

import java.io.IOException;
import java.io.InputStream;
import org.eclipse.debug.core.IStreamListener;
import org.eclipse.debug.core.model.IStreamMonitor;
import org.eclipse.debug.core.model.IStreamsProxy2;
import org.eclipse.debug.internal.core.DebugCoreMessages;

public class NullStreamsProxy
implements IStreamsProxy2 {
    private NullStreamMonitor outputStreamMonitor;
    private NullStreamMonitor errorStreamMonitor;

    public NullStreamsProxy(Process process) {
        this.outputStreamMonitor = new NullStreamMonitor(process.getInputStream());
        this.errorStreamMonitor = new NullStreamMonitor(process.getErrorStream());
    }

    public void closeInputStream() throws IOException {
    }

    public IStreamMonitor getErrorStreamMonitor() {
        return this.errorStreamMonitor;
    }

    public IStreamMonitor getOutputStreamMonitor() {
        return this.outputStreamMonitor;
    }

    public void write(String input) throws IOException {
    }

    private class NullStreamMonitor
    implements IStreamMonitor {
        private InputStream fStream;

        public NullStreamMonitor(InputStream stream) {
            this.fStream = stream;
            this.startReaderThread();
        }

        private void startReaderThread() {
            Thread thread = new Thread(new Runnable(this){
                final /* synthetic */ NullStreamMonitor this$1;
                {
                    this.this$1 = nullStreamMonitor;
                }

                public void run() {
                    byte[] bytes = new byte[1024];
                    try {
                        while (NullStreamMonitor.access$0(this.this$1).read(bytes) >= 0) {
                        }
                    }
                    catch (IOException iOException) {}
                }
            }, DebugCoreMessages.NullStreamsProxy_0);
            thread.setDaemon(true);
            thread.start();
        }

        public void addListener(IStreamListener listener) {
        }

        public String getContents() {
            return "";
        }

        public void removeListener(IStreamListener listener) {
        }

        static /* synthetic */ InputStream access$0(NullStreamMonitor nullStreamMonitor) {
            return nullStreamMonitor.fStream;
        }
    }
}

