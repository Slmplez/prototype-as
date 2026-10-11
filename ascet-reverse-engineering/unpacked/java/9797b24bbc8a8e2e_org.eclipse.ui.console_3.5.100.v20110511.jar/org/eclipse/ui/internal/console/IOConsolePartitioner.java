/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.IJobManager
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentPartitioner
 *  org.eclipse.jface.text.IDocumentPartitionerExtension
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.ui.progress.UIJob
 *  org.eclipse.ui.progress.WorkbenchJob
 */
package org.eclipse.ui.internal.console;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.IJobManager;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitionerExtension;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Region;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.console.ConsolePlugin;
import org.eclipse.ui.console.IConsoleDocumentPartitioner;
import org.eclipse.ui.console.IOConsole;
import org.eclipse.ui.console.IOConsoleInputStream;
import org.eclipse.ui.console.IOConsoleOutputStream;
import org.eclipse.ui.internal.console.IOConsolePartition;
import org.eclipse.ui.progress.UIJob;
import org.eclipse.ui.progress.WorkbenchJob;

public class IOConsolePartitioner
implements IConsoleDocumentPartitioner,
IDocumentPartitionerExtension {
    private PendingPartition consoleClosedPartition;
    private IDocument document;
    private ArrayList partitions;
    private ArrayList pendingPartitions;
    private ArrayList updatePartitions;
    private IOConsolePartition lastPartition;
    private QueueProcessingJob queueJob;
    private IOConsoleInputStream inputStream;
    private boolean updateInProgress;
    private ArrayList inputPartitions;
    private int firstOffset;
    private String[] lld;
    private int highWaterMark = -1;
    private int lowWaterMark = -1;
    private boolean connected = false;
    private IOConsole console;
    private TrimJob trimJob = new TrimJob();
    private Object overflowLock = new Object();
    private int fBuffer;

    public IOConsolePartitioner(IOConsoleInputStream inputStream, IOConsole console) {
        this.inputStream = inputStream;
        this.console = console;
        this.trimJob.setRule(console.getSchedulingRule());
    }

    public IDocument getDocument() {
        return this.document;
    }

    public void connect(IDocument doc) {
        this.document = doc;
        this.document.setDocumentPartitioner((IDocumentPartitioner)this);
        this.lld = this.document.getLegalLineDelimiters();
        this.partitions = new ArrayList();
        this.pendingPartitions = new ArrayList();
        this.inputPartitions = new ArrayList();
        this.queueJob = new QueueProcessingJob();
        this.queueJob.setSystem(true);
        this.queueJob.setPriority(10);
        this.queueJob.setRule(this.console.getSchedulingRule());
        this.connected = true;
    }

    public int getHighWaterMark() {
        return this.highWaterMark;
    }

    public int getLowWaterMark() {
        return this.lowWaterMark;
    }

    public void setWaterMarks(int low, int high) {
        this.lowWaterMark = low;
        this.highWaterMark = high;
        ConsolePlugin.getStandardDisplay().asyncExec(new Runnable(){

            public void run() {
                IOConsolePartitioner.this.checkBufferSize();
            }
        });
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void streamsClosed() {
        this.consoleClosedPartition = new PendingPartition(null, null);
        ArrayList arrayList = this.pendingPartitions;
        synchronized (arrayList) {
            this.pendingPartitions.add(this.consoleClosedPartition);
        }
        this.queueJob.schedule();
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void disconnect() {
        Object object = this.overflowLock;
        synchronized (object) {
            this.document = null;
            this.partitions.clear();
            this.connected = false;
            try {
                this.inputStream.close();
            }
            catch (IOException iOException) {}
        }
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
    }

    public boolean documentChanged(DocumentEvent event) {
        return this.documentChanged2(event) != null;
    }

    public String[] getLegalContentTypes() {
        return new String[]{IOConsolePartition.OUTPUT_PARTITION_TYPE, IOConsolePartition.INPUT_PARTITION_TYPE};
    }

    public String getContentType(int offset) {
        return this.getPartition(offset).getType();
    }

    /*
     * Unable to fully structure code
     */
    public ITypedRegion[] computePartitioning(int offset, int length) {
        rangeEnd = offset + length;
        left = 0;
        right = this.partitions.size() - 1;
        mid = 0;
        position = null;
        if (left != right) ** GOTO lbl23
        return new IOConsolePartition[]{(IOConsolePartition)this.partitions.get(0)};
lbl-1000:
        // 1 sources

        {
            mid = (left + right) / 2;
            position = (IOConsolePartition)this.partitions.get(mid);
            if (rangeEnd < position.getOffset()) {
                if (left == mid) {
                    right = left;
                    continue;
                }
                right = mid - 1;
                continue;
            }
            if (offset > position.getOffset() + position.getLength() - 1) {
                if (right == mid) {
                    left = right;
                    continue;
                }
                left = mid + 1;
                continue;
            }
            left = right = mid;
lbl23:
            // 6 sources

            ** while (left < right)
        }
lbl24:
        // 1 sources

        list = new ArrayList<IOConsolePartition>();
        index = left - 1;
        if (index >= 0) {
            position = (IOConsolePartition)this.partitions.get(index);
            while (index >= 0 && position.getOffset() + position.getLength() > offset) {
                if (--index < 0) continue;
                position = (IOConsolePartition)this.partitions.get(index);
            }
        }
        position = (IOConsolePartition)this.partitions.get(++index);
        while (index < this.partitions.size() && position.getOffset() < rangeEnd) {
            list.add(position);
            if (++index >= this.partitions.size()) continue;
            position = (IOConsolePartition)this.partitions.get(index);
        }
        return list.toArray(new IOConsolePartition[list.size()]);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public ITypedRegion getPartition(int offset) {
        int i = 0;
        while (i < this.partitions.size()) {
            ITypedRegion partition = (ITypedRegion)this.partitions.get(i);
            int start = partition.getOffset();
            int end = start + partition.getLength();
            if (offset >= start && offset < end) {
                return partition;
            }
            ++i;
        }
        if (this.lastPartition == null) {
            ArrayList arrayList = this.partitions;
            synchronized (arrayList) {
                this.lastPartition = new IOConsolePartition(this.inputStream, "");
                this.lastPartition.setOffset(offset);
                this.partitions.add(this.lastPartition);
                this.inputPartitions.add(this.lastPartition);
            }
        }
        return this.lastPartition;
    }

    private void checkBufferSize() {
        int length;
        if (this.document != null && this.highWaterMark > 0 && (length = this.document.getLength()) > this.highWaterMark && this.trimJob.getState() == 0) {
            this.trimJob.setOffset(length - this.lowWaterMark);
            this.trimJob.schedule();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void clearBuffer() {
        Object object = this.overflowLock;
        synchronized (object) {
            this.trimJob.setOffset(-1);
            this.trimJob.schedule();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public IRegion documentChanged2(DocumentEvent event) {
        int offset;
        IOConsolePartition partition;
        if (this.document == null) {
            return null;
        }
        if (this.document.getLength() == 0) {
            if (this.lastPartition != null && this.lastPartition.getType().equals(IOConsolePartition.INPUT_PARTITION_TYPE)) {
                ArrayList arrayList = this.partitions;
                synchronized (arrayList) {
                    this.partitions.remove(this.lastPartition);
                    this.inputPartitions.remove(this.lastPartition);
                }
            }
            this.lastPartition = null;
            return new Region(0, 0);
        }
        if (this.updateInProgress) {
            ArrayList arrayList = this.partitions;
            synchronized (arrayList) {
                if (this.updatePartitions != null) {
                    Iterator i = this.updatePartitions.iterator();
                    while (i.hasNext()) {
                        PendingPartition pp = (PendingPartition)i.next();
                        if (pp == this.consoleClosedPartition) continue;
                        int ppLen = pp.text.length();
                        if (this.lastPartition != null && this.lastPartition.getStream() == pp.stream) {
                            int len = this.lastPartition.getLength();
                            this.lastPartition.setLength(len + ppLen);
                        } else {
                            IOConsolePartition partition2 = new IOConsolePartition(pp.stream, ppLen);
                            partition2.setOffset(this.firstOffset);
                            this.lastPartition = partition2;
                            this.partitions.add(partition2);
                        }
                        this.firstOffset += ppLen;
                    }
                }
            }
        }
        int amountDeleted = event.getLength();
        if (amountDeleted > 0 && (partition = (IOConsolePartition)this.getPartition(offset = event.fOffset)) == this.lastPartition) {
            partition.delete(event.fOffset - partition.getOffset(), amountDeleted);
        }
        ArrayList arrayList = this.partitions;
        synchronized (arrayList) {
            if (this.lastPartition == null || this.lastPartition.isReadOnly()) {
                this.lastPartition = new IOConsolePartition(this.inputStream, event.fText);
                this.lastPartition.setOffset(event.fOffset);
                this.partitions.add(this.lastPartition);
                this.inputPartitions.add(this.lastPartition);
            } else {
                this.lastPartition.insert(event.fText, event.fOffset - this.lastPartition.getOffset());
            }
            int lastLineDelimiter = -1;
            String partitionText = this.lastPartition.getString();
            int i = 0;
            while (i < this.lld.length) {
                String ld = this.lld[i];
                int index = partitionText.lastIndexOf(ld);
                if (index != -1) {
                    index += ld.length();
                }
                if (index > lastLineDelimiter) {
                    lastLineDelimiter = index;
                }
                ++i;
            }
            if (lastLineDelimiter != -1) {
                StringBuffer input = new StringBuffer();
                Iterator it = this.inputPartitions.iterator();
                while (it.hasNext()) {
                    IOConsolePartition partition3 = (IOConsolePartition)it.next();
                    if (partition3.getOffset() + partition3.getLength() <= event.fOffset + lastLineDelimiter) {
                        if (partition3 == this.lastPartition) {
                            this.lastPartition = null;
                        }
                        input.append(partition3.getString());
                        partition3.clearBuffer();
                        partition3.setReadOnly();
                        it.remove();
                        continue;
                    }
                    String contentBefore = partitionText.substring(0, lastLineDelimiter);
                    IOConsolePartition newPartition = new IOConsolePartition(this.inputStream, contentBefore);
                    newPartition.setOffset(partition3.getOffset());
                    newPartition.setReadOnly();
                    newPartition.clearBuffer();
                    int index = this.partitions.indexOf(partition3);
                    this.partitions.add(index, newPartition);
                    input.append(contentBefore);
                    partition3.delete(0, lastLineDelimiter);
                    partition3.setOffset(lastLineDelimiter + partition3.getOffset());
                    lastLineDelimiter = 0;
                }
                if (input.length() > 0) {
                    this.inputStream.appendData(input.toString());
                }
            }
        }
        return new Region(event.fOffset, event.fText.length());
    }

    private void setUpdateInProgress(boolean b) {
        this.updateInProgress = b;
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void streamAppended(IOConsoleOutputStream stream, String s) throws IOException {
        if (this.document == null) {
            throw new IOException("Document is closed");
        }
        ArrayList arrayList = this.pendingPartitions;
        synchronized (arrayList) {
            PendingPartition last = this.pendingPartitions.size() > 0 ? this.pendingPartitions.get(this.pendingPartitions.size() - 1) : null;
            if (last != null && last.stream == stream) {
                last.append(s);
            } else {
                this.pendingPartitions.add(new PendingPartition(stream, s));
                if (this.fBuffer > 1000) {
                    this.queueJob.schedule();
                } else {
                    this.queueJob.schedule(50L);
                }
            }
            if (this.fBuffer > 160000) {
                if (Display.getCurrent() == null) {
                    try {
                        this.pendingPartitions.wait();
                    }
                    catch (InterruptedException interruptedException) {}
                } else {
                    this.processQueue();
                }
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    void processQueue() {
        Object object = this.overflowLock;
        synchronized (object) {
            PendingPartition pp;
            ArrayList pendingCopy = new ArrayList();
            StringBuffer buffer = null;
            boolean consoleClosed = false;
            ArrayList arrayList = this.pendingPartitions;
            synchronized (arrayList) {
                pendingCopy.addAll(this.pendingPartitions);
                this.pendingPartitions.clear();
                this.fBuffer = 0;
                this.pendingPartitions.notifyAll();
            }
            int size = 0;
            Iterator i = pendingCopy.iterator();
            while (i.hasNext()) {
                pp = (PendingPartition)i.next();
                if (pp == this.consoleClosedPartition) continue;
                size += pp.text.length();
            }
            buffer = new StringBuffer(size);
            i = pendingCopy.iterator();
            while (i.hasNext()) {
                pp = (PendingPartition)i.next();
                if (pp != this.consoleClosedPartition) {
                    buffer.append(pp.text);
                    continue;
                }
                consoleClosed = true;
            }
            if (this.connected) {
                this.setUpdateInProgress(true);
                this.updatePartitions = pendingCopy;
                this.firstOffset = this.document.getLength();
                try {
                    if (buffer != null) {
                        this.document.replace(this.firstOffset, 0, buffer.toString());
                    }
                }
                catch (BadLocationException badLocationException) {}
                this.updatePartitions = null;
                this.setUpdateInProgress(false);
            }
            if (consoleClosed) {
                this.console.partitionerFinished();
            }
            this.checkBufferSize();
        }
    }

    public boolean isReadOnly(int offset) {
        return ((IOConsolePartition)this.getPartition(offset)).isReadOnly();
    }

    public StyleRange[] getStyleRanges(int offset, int length) {
        if (!this.connected) {
            return new StyleRange[0];
        }
        IOConsolePartition[] computedPartitions = (IOConsolePartition[])this.computePartitioning(offset, length);
        StyleRange[] styles = new StyleRange[computedPartitions.length];
        int i = 0;
        while (i < computedPartitions.length) {
            int rangeStart = Math.max(computedPartitions[i].getOffset(), offset);
            int rangeLength = computedPartitions[i].getLength();
            styles[i] = computedPartitions[i].getStyleRange(rangeStart, rangeLength);
            ++i;
        }
        return styles;
    }

    private class PendingPartition {
        StringBuffer text = new StringBuffer(8192);
        IOConsoleOutputStream stream;

        PendingPartition(IOConsoleOutputStream stream, String text) {
            this.stream = stream;
            if (text != null) {
                this.append(text);
            }
        }

        void append(String moreText) {
            this.text.append(moreText);
            IOConsolePartitioner iOConsolePartitioner = IOConsolePartitioner.this;
            iOConsolePartitioner.fBuffer = iOConsolePartitioner.fBuffer + moreText.length();
        }
    }

    private class QueueProcessingJob
    extends UIJob {
        QueueProcessingJob() {
            super("IOConsole Updater");
        }

        public IStatus runInUIThread(IProgressMonitor monitor) {
            IOConsolePartitioner.this.processQueue();
            return Status.OK_STATUS;
        }

        public boolean shouldRun() {
            boolean shouldRun = IOConsolePartitioner.this.connected && IOConsolePartitioner.this.pendingPartitions != null && IOConsolePartitioner.this.pendingPartitions.size() > 0;
            return shouldRun;
        }
    }

    private class TrimJob
    extends WorkbenchJob {
        private int truncateOffset;

        TrimJob() {
            super("Trim Job");
            this.setSystem(true);
        }

        public void setOffset(int offset) {
            this.truncateOffset = offset;
        }

        /*
         * WARNING - Removed try catching itself - possible behaviour change.
         */
        public IStatus runInUIThread(IProgressMonitor monitor) {
            IJobManager jobManager = Job.getJobManager();
            try {
                jobManager.join((Object)IOConsolePartitioner.this.console, monitor);
            }
            catch (OperationCanceledException operationCanceledException) {
                return Status.CANCEL_STATUS;
            }
            catch (InterruptedException interruptedException) {
                return Status.CANCEL_STATUS;
            }
            if (IOConsolePartitioner.this.document == null) {
                return Status.OK_STATUS;
            }
            int length = IOConsolePartitioner.this.document.getLength();
            if (this.truncateOffset < length) {
                Object object = IOConsolePartitioner.this.overflowLock;
                synchronized (object) {
                    try {
                        if (this.truncateOffset < 0) {
                            IOConsolePartitioner.this.setUpdateInProgress(true);
                            IOConsolePartitioner.this.document.set("");
                            IOConsolePartitioner.this.setUpdateInProgress(false);
                            IOConsolePartitioner.this.partitions.clear();
                        } else {
                            int cutoffLine = IOConsolePartitioner.this.document.getLineOfOffset(this.truncateOffset);
                            int cutOffset = IOConsolePartitioner.this.document.getLineOffset(cutoffLine);
                            IOConsolePartition partition = (IOConsolePartition)IOConsolePartitioner.this.getPartition(cutOffset);
                            partition.setLength(partition.getOffset() + partition.getLength() - cutOffset);
                            IOConsolePartitioner.this.setUpdateInProgress(true);
                            IOConsolePartitioner.this.document.replace(0, cutOffset, "");
                            IOConsolePartitioner.this.setUpdateInProgress(false);
                            int index = IOConsolePartitioner.this.partitions.indexOf(partition);
                            int i = 0;
                            while (i < index) {
                                IOConsolePartitioner.this.partitions.remove(0);
                                ++i;
                            }
                            int offset = 0;
                            Iterator i2 = IOConsolePartitioner.this.partitions.iterator();
                            while (i2.hasNext()) {
                                IOConsolePartition p = (IOConsolePartition)i2.next();
                                p.setOffset(offset);
                                offset += p.getLength();
                            }
                        }
                    }
                    catch (BadLocationException badLocationException) {}
                }
            }
            return Status.OK_STATUS;
        }
    }
}

