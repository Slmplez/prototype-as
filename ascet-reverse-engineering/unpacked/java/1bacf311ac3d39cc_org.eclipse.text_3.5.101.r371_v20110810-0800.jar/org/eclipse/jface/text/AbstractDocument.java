/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.ISafeRunnable
 *  org.eclipse.core.runtime.ListenerList
 *  org.eclipse.core.runtime.SafeRunner
 */
package org.eclipse.jface.text;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.regex.PatternSyntaxException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.ISafeRunnable;
import org.eclipse.core.runtime.ListenerList;
import org.eclipse.core.runtime.SafeRunner;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPartitioningException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.DocumentPartitioningChangedEvent;
import org.eclipse.jface.text.DocumentRewriteSession;
import org.eclipse.jface.text.DocumentRewriteSessionEvent;
import org.eclipse.jface.text.DocumentRewriteSessionType;
import org.eclipse.jface.text.FindReplaceDocumentAdapter;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentExtension;
import org.eclipse.jface.text.IDocumentExtension2;
import org.eclipse.jface.text.IDocumentExtension3;
import org.eclipse.jface.text.IDocumentExtension4;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentPartitioner;
import org.eclipse.jface.text.IDocumentPartitionerExtension;
import org.eclipse.jface.text.IDocumentPartitionerExtension2;
import org.eclipse.jface.text.IDocumentPartitionerExtension3;
import org.eclipse.jface.text.IDocumentPartitioningListener;
import org.eclipse.jface.text.IDocumentPartitioningListenerExtension;
import org.eclipse.jface.text.IDocumentPartitioningListenerExtension2;
import org.eclipse.jface.text.IDocumentRewriteSessionListener;
import org.eclipse.jface.text.ILineTracker;
import org.eclipse.jface.text.ILineTrackerExtension;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.IRepairableDocument;
import org.eclipse.jface.text.IRepairableDocumentExtension;
import org.eclipse.jface.text.ITextStore;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.TypedRegion;

public abstract class AbstractDocument
implements IDocument,
IDocumentExtension,
IDocumentExtension2,
IDocumentExtension3,
IDocumentExtension4,
IRepairableDocument,
IRepairableDocumentExtension {
    private static final boolean DEBUG = false;
    private ITextStore fStore;
    private ILineTracker fTracker;
    private ListenerList fDocumentListeners;
    private ListenerList fPrenotifiedDocumentListeners;
    private ListenerList fDocumentPartitioningListeners;
    private Map fPositions;
    private Map fEndPositions;
    private List fPositionUpdaters;
    private List fPostNotificationChanges;
    private int fReentranceCount = 0;
    private int fStoppedCount = 0;
    private boolean fAcceptPostNotificationReplaces = true;
    private int fStoppedListenerNotification = 0;
    private DocumentEvent fDeferredDocumentEvent;
    private Map fDocumentPartitioners;
    private DocumentPartitioningChangedEvent fDocumentPartitioningChangedEvent;
    private FindReplaceDocumentAdapter fFindReplaceDocumentAdapter;
    private DocumentRewriteSession fDocumentRewriteSession;
    private List fDocumentRewriteSessionListeners;
    private long fModificationStamp = this.getNextModificationStamp();
    private long fNextModificationStamp = -1L;
    private String fInitialLineDelimiter;

    protected AbstractDocument() {
    }

    protected ITextStore getStore() {
        Assert.isNotNull((Object)this.fStore);
        return this.fStore;
    }

    protected ILineTracker getTracker() {
        Assert.isNotNull((Object)this.fTracker);
        return this.fTracker;
    }

    protected List getDocumentListeners() {
        return Arrays.asList(this.fDocumentListeners.getListeners());
    }

    protected List getDocumentPartitioningListeners() {
        return Arrays.asList(this.fDocumentPartitioningListeners.getListeners());
    }

    protected Map getDocumentManagedPositions() {
        return this.fPositions;
    }

    public IDocumentPartitioner getDocumentPartitioner() {
        return this.getDocumentPartitioner("__dftl_partitioning");
    }

    protected void setTextStore(ITextStore store) {
        this.fStore = store;
    }

    protected void setLineTracker(ILineTracker tracker) {
        this.fTracker = tracker;
    }

    public void setDocumentPartitioner(IDocumentPartitioner partitioner) {
        this.setDocumentPartitioner("__dftl_partitioning", partitioner);
    }

    protected void completeInitialization() {
        this.fPositions = new HashMap();
        this.fEndPositions = new HashMap();
        this.fPositionUpdaters = new ArrayList();
        this.fDocumentListeners = new ListenerList(1);
        this.fPrenotifiedDocumentListeners = new ListenerList(1);
        this.fDocumentPartitioningListeners = new ListenerList(1);
        this.fDocumentRewriteSessionListeners = new ArrayList();
        this.addPositionCategory("__dflt_position_category");
        this.addPositionUpdater(new DefaultPositionUpdater("__dflt_position_category"));
    }

    public void addDocumentListener(IDocumentListener listener) {
        Assert.isNotNull((Object)listener);
        this.fDocumentListeners.add((Object)listener);
    }

    public void removeDocumentListener(IDocumentListener listener) {
        Assert.isNotNull((Object)listener);
        this.fDocumentListeners.remove((Object)listener);
    }

    public void addPrenotifiedDocumentListener(IDocumentListener listener) {
        Assert.isNotNull((Object)listener);
        this.fPrenotifiedDocumentListeners.add((Object)listener);
    }

    public void removePrenotifiedDocumentListener(IDocumentListener listener) {
        Assert.isNotNull((Object)listener);
        this.fPrenotifiedDocumentListeners.remove((Object)listener);
    }

    public void addDocumentPartitioningListener(IDocumentPartitioningListener listener) {
        Assert.isNotNull((Object)listener);
        this.fDocumentPartitioningListeners.add((Object)listener);
    }

    public void removeDocumentPartitioningListener(IDocumentPartitioningListener listener) {
        Assert.isNotNull((Object)listener);
        this.fDocumentPartitioningListeners.remove((Object)listener);
    }

    public void addPosition(String category, Position position) throws BadLocationException, BadPositionCategoryException {
        if (position.offset < 0 || position.length < 0 || position.offset + position.length > this.getLength()) {
            throw new BadLocationException();
        }
        if (category == null) {
            throw new BadPositionCategoryException();
        }
        List list = (List)this.fPositions.get(category);
        if (list == null) {
            throw new BadPositionCategoryException();
        }
        list.add(this.computeIndexInPositionList(list, position.offset), position);
        List endPositions = (List)this.fEndPositions.get(category);
        if (endPositions == null) {
            throw new BadPositionCategoryException();
        }
        endPositions.add(this.computeIndexInPositionList(endPositions, position.offset + position.length - 1, false), position);
    }

    public void addPosition(Position position) throws BadLocationException {
        try {
            this.addPosition("__dflt_position_category", position);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    public void addPositionCategory(String category) {
        if (category == null) {
            return;
        }
        if (!this.containsPositionCategory(category)) {
            this.fPositions.put(category, new ArrayList());
            this.fEndPositions.put(category, new ArrayList());
        }
    }

    public void addPositionUpdater(IPositionUpdater updater) {
        this.insertPositionUpdater(updater, this.fPositionUpdaters.size());
    }

    public boolean containsPosition(String category, int offset, int length) {
        if (category == null) {
            return false;
        }
        List list = (List)this.fPositions.get(category);
        if (list == null) {
            return false;
        }
        int size = list.size();
        if (size == 0) {
            return false;
        }
        int index = this.computeIndexInPositionList(list, offset);
        if (index < size) {
            Position p = (Position)list.get(index);
            while (p != null && p.offset == offset) {
                if (p.length == length) {
                    return true;
                }
                Position position = p = ++index < size ? (Position)list.get(index) : null;
            }
        }
        return false;
    }

    public boolean containsPositionCategory(String category) {
        if (category != null) {
            return this.fPositions.containsKey(category);
        }
        return false;
    }

    protected int computeIndexInPositionList(List positions, int offset) {
        return this.computeIndexInPositionList(positions, offset, true);
    }

    protected int computeIndexInPositionList(List positions, int offset, boolean orderedByOffset) {
        if (positions.size() == 0) {
            return 0;
        }
        int left = 0;
        int right = positions.size() - 1;
        int mid = 0;
        Position p = null;
        while (left < right) {
            mid = (left + right) / 2;
            p = (Position)positions.get(mid);
            int pOffset = this.getOffset(orderedByOffset, p);
            if (offset < pOffset) {
                if (left == mid) {
                    right = left;
                    continue;
                }
                right = mid - 1;
                continue;
            }
            if (offset > pOffset) {
                if (right == mid) {
                    left = right;
                    continue;
                }
                left = mid + 1;
                continue;
            }
            if (offset != pOffset) continue;
            left = right = mid;
        }
        int pos = left;
        p = (Position)positions.get(pos);
        int pPosition = this.getOffset(orderedByOffset, p);
        if (offset > pPosition) {
            ++pos;
        } else {
            while (--pos >= 0 && offset == (pPosition = this.getOffset(orderedByOffset, p = (Position)positions.get(pos)))) {
            }
            ++pos;
        }
        Assert.isTrue((pos >= 0 && pos <= positions.size() ? 1 : 0) != 0);
        return pos;
    }

    private int getOffset(boolean orderedByOffset, Position position) {
        if (orderedByOffset || position.getLength() == 0) {
            return position.getOffset();
        }
        return position.getOffset() + position.getLength() - 1;
    }

    public int computeIndexInCategory(String category, int offset) throws BadLocationException, BadPositionCategoryException {
        if (offset < 0 || offset > this.getLength()) {
            throw new BadLocationException();
        }
        List c = (List)this.fPositions.get(category);
        if (c == null) {
            throw new BadPositionCategoryException();
        }
        return this.computeIndexInPositionList(c, offset);
    }

    protected void fireDocumentPartitioningChanged() {
        if (this.fDocumentPartitioningListeners == null) {
            return;
        }
        Object[] listeners = this.fDocumentPartitioningListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            ((IDocumentPartitioningListener)listeners[i]).documentPartitioningChanged(this);
            ++i;
        }
    }

    protected void fireDocumentPartitioningChanged(IRegion region) {
        if (this.fDocumentPartitioningListeners == null) {
            return;
        }
        Object[] listeners = this.fDocumentPartitioningListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IDocumentPartitioningListener l = (IDocumentPartitioningListener)listeners[i];
            try {
                if (l instanceof IDocumentPartitioningListenerExtension) {
                    ((IDocumentPartitioningListenerExtension)((Object)l)).documentPartitioningChanged(this, region);
                } else {
                    l.documentPartitioningChanged(this);
                }
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
    }

    protected void fireDocumentPartitioningChanged(DocumentPartitioningChangedEvent event) {
        if (this.fDocumentPartitioningListeners == null) {
            return;
        }
        Object[] listeners = this.fDocumentPartitioningListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            IDocumentPartitioningListener l = (IDocumentPartitioningListener)listeners[i];
            try {
                if (l instanceof IDocumentPartitioningListenerExtension2) {
                    IDocumentPartitioningListenerExtension2 extension2 = (IDocumentPartitioningListenerExtension2)((Object)l);
                    extension2.documentPartitioningChanged(event);
                } else if (l instanceof IDocumentPartitioningListenerExtension) {
                    IDocumentPartitioningListenerExtension extension = (IDocumentPartitioningListenerExtension)((Object)l);
                    extension.documentPartitioningChanged(this, event.getCoverage());
                } else {
                    l.documentPartitioningChanged(this);
                }
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
    }

    protected void fireDocumentAboutToBeChanged(DocumentEvent event) {
        if (this.fReentranceCount == 0) {
            this.flushPostNotificationChanges();
        }
        if (this.fDocumentPartitioners != null) {
            Iterator e = this.fDocumentPartitioners.values().iterator();
            while (e.hasNext()) {
                IDocumentPartitionerExtension3 extension;
                IDocumentPartitioner p = (IDocumentPartitioner)e.next();
                if (p instanceof IDocumentPartitionerExtension3 && (extension = (IDocumentPartitionerExtension3)((Object)p)).getActiveRewriteSession() != null) continue;
                try {
                    p.documentAboutToBeChanged(event);
                }
                catch (Exception ex) {
                    AbstractDocument.log(ex);
                }
            }
        }
        Object[] listeners = this.fPrenotifiedDocumentListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            try {
                ((IDocumentListener)listeners[i]).documentAboutToBeChanged(event);
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
        listeners = this.fDocumentListeners.getListeners();
        i = 0;
        while (i < listeners.length) {
            try {
                ((IDocumentListener)listeners[i]).documentAboutToBeChanged(event);
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
    }

    protected void updateDocumentStructures(DocumentEvent event) {
        if (this.fDocumentPartitioners != null) {
            this.fDocumentPartitioningChangedEvent = new DocumentPartitioningChangedEvent(this);
            Iterator e = this.fDocumentPartitioners.keySet().iterator();
            while (e.hasNext()) {
                Object extension;
                String partitioning = (String)e.next();
                IDocumentPartitioner partitioner = (IDocumentPartitioner)this.fDocumentPartitioners.get(partitioning);
                if (partitioner instanceof IDocumentPartitionerExtension3 && (extension = (IDocumentPartitionerExtension3)((Object)partitioner)).getActiveRewriteSession() != null) continue;
                if (partitioner instanceof IDocumentPartitionerExtension) {
                    extension = (IDocumentPartitionerExtension)((Object)partitioner);
                    IRegion r = extension.documentChanged2(event);
                    if (r == null) continue;
                    this.fDocumentPartitioningChangedEvent.setPartitionChange(partitioning, r.getOffset(), r.getLength());
                    continue;
                }
                if (!partitioner.documentChanged(event)) continue;
                this.fDocumentPartitioningChangedEvent.setPartitionChange(partitioning, 0, event.getDocument().getLength());
            }
        }
        if (this.fPositions.size() > 0) {
            this.updatePositions(event);
        }
    }

    protected void doFireDocumentChanged(DocumentEvent event) {
        boolean changed = this.fDocumentPartitioningChangedEvent != null && !this.fDocumentPartitioningChangedEvent.isEmpty();
        IRegion change = changed ? this.fDocumentPartitioningChangedEvent.getCoverage() : null;
        this.doFireDocumentChanged(event, changed, change);
    }

    protected void doFireDocumentChanged(DocumentEvent event, boolean firePartitionChange, IRegion partitionChange) {
        this.doFireDocumentChanged2(event);
    }

    protected void doFireDocumentChanged2(DocumentEvent event) {
        DocumentPartitioningChangedEvent p = this.fDocumentPartitioningChangedEvent;
        this.fDocumentPartitioningChangedEvent = null;
        if (p != null && !p.isEmpty()) {
            this.fireDocumentPartitioningChanged(p);
        }
        Object[] listeners = this.fPrenotifiedDocumentListeners.getListeners();
        int i = 0;
        while (i < listeners.length) {
            try {
                ((IDocumentListener)listeners[i]).documentChanged(event);
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
        listeners = this.fDocumentListeners.getListeners();
        i = 0;
        while (i < listeners.length) {
            try {
                ((IDocumentListener)listeners[i]).documentChanged(event);
            }
            catch (Exception ex) {
                AbstractDocument.log(ex);
            }
            ++i;
        }
        ++this.fReentranceCount;
        try {
            if (this.fReentranceCount == 1) {
                this.executePostNotificationChanges();
            }
        }
        finally {
            --this.fReentranceCount;
        }
    }

    protected void fireDocumentChanged(DocumentEvent event) {
        this.updateDocumentStructures(event);
        if (this.fStoppedListenerNotification == 0) {
            this.doFireDocumentChanged(event);
        } else {
            this.fDeferredDocumentEvent = event;
        }
    }

    public char getChar(int pos) throws BadLocationException {
        if (pos < 0 || pos >= this.getLength()) {
            throw new BadLocationException();
        }
        return this.getStore().get(pos);
    }

    public String getContentType(int offset) throws BadLocationException {
        String contentType = null;
        try {
            contentType = this.getContentType("__dftl_partitioning", offset, false);
            Assert.isNotNull((Object)contentType);
        }
        catch (BadPartitioningException badPartitioningException) {
            Assert.isTrue((boolean)false);
        }
        return contentType;
    }

    public String[] getLegalContentTypes() {
        String[] contentTypes = null;
        try {
            contentTypes = this.getLegalContentTypes("__dftl_partitioning");
            Assert.isNotNull((Object)contentTypes);
        }
        catch (BadPartitioningException badPartitioningException) {
            Assert.isTrue((boolean)false);
        }
        return contentTypes;
    }

    public int getLength() {
        return this.getStore().getLength();
    }

    public String getLineDelimiter(int line) throws BadLocationException {
        return this.getTracker().getLineDelimiter(line);
    }

    public String[] getLegalLineDelimiters() {
        return this.getTracker().getLegalLineDelimiters();
    }

    public String getDefaultLineDelimiter() {
        String lineDelimiter = null;
        try {
            lineDelimiter = this.getLineDelimiter(0);
        }
        catch (BadLocationException badLocationException) {}
        if (lineDelimiter != null) {
            return lineDelimiter;
        }
        if (this.fInitialLineDelimiter != null) {
            return this.fInitialLineDelimiter;
        }
        String sysLineDelimiter = System.getProperty("line.separator");
        String[] delimiters = this.getLegalLineDelimiters();
        Assert.isTrue((delimiters.length > 0 ? 1 : 0) != 0);
        int i = 0;
        while (i < delimiters.length) {
            if (delimiters[i].equals(sysLineDelimiter)) {
                lineDelimiter = sysLineDelimiter;
                break;
            }
            ++i;
        }
        if (lineDelimiter == null) {
            lineDelimiter = delimiters[0];
        }
        return lineDelimiter;
    }

    public void setInitialLineDelimiter(String lineDelimiter) {
        Assert.isNotNull((Object)lineDelimiter);
        this.fInitialLineDelimiter = lineDelimiter;
    }

    public int getLineLength(int line) throws BadLocationException {
        return this.getTracker().getLineLength(line);
    }

    public int getLineOfOffset(int pos) throws BadLocationException {
        return this.getTracker().getLineNumberOfOffset(pos);
    }

    public int getLineOffset(int line) throws BadLocationException {
        return this.getTracker().getLineOffset(line);
    }

    public IRegion getLineInformation(int line) throws BadLocationException {
        return this.getTracker().getLineInformation(line);
    }

    public IRegion getLineInformationOfOffset(int offset) throws BadLocationException {
        return this.getTracker().getLineInformationOfOffset(offset);
    }

    public int getNumberOfLines() {
        return this.getTracker().getNumberOfLines();
    }

    public int getNumberOfLines(int offset, int length) throws BadLocationException {
        return this.getTracker().getNumberOfLines(offset, length);
    }

    public int computeNumberOfLines(String text) {
        return this.getTracker().computeNumberOfLines(text);
    }

    public ITypedRegion getPartition(int offset) throws BadLocationException {
        ITypedRegion partition = null;
        try {
            partition = this.getPartition("__dftl_partitioning", offset, false);
            Assert.isNotNull((Object)partition);
        }
        catch (BadPartitioningException badPartitioningException) {
            Assert.isTrue((boolean)false);
        }
        return partition;
    }

    public ITypedRegion[] computePartitioning(int offset, int length) throws BadLocationException {
        ITypedRegion[] partitioning = null;
        try {
            partitioning = this.computePartitioning("__dftl_partitioning", offset, length, false);
            Assert.isNotNull((Object)partitioning);
        }
        catch (BadPartitioningException badPartitioningException) {
            Assert.isTrue((boolean)false);
        }
        return partitioning;
    }

    public Position[] getPositions(String category) throws BadPositionCategoryException {
        if (category == null) {
            throw new BadPositionCategoryException();
        }
        List c = (List)this.fPositions.get(category);
        if (c == null) {
            throw new BadPositionCategoryException();
        }
        Position[] positions = new Position[c.size()];
        c.toArray(positions);
        return positions;
    }

    public String[] getPositionCategories() {
        String[] categories = new String[this.fPositions.size()];
        Iterator keys = this.fPositions.keySet().iterator();
        int i = 0;
        while (i < categories.length) {
            categories[i] = (String)keys.next();
            ++i;
        }
        return categories;
    }

    public IPositionUpdater[] getPositionUpdaters() {
        IPositionUpdater[] updaters = new IPositionUpdater[this.fPositionUpdaters.size()];
        this.fPositionUpdaters.toArray(updaters);
        return updaters;
    }

    public String get() {
        return this.getStore().get(0, this.getLength());
    }

    public String get(int pos, int length) throws BadLocationException {
        int myLength = this.getLength();
        if (pos < 0 || length < 0 || pos + length > myLength) {
            throw new BadLocationException();
        }
        return this.getStore().get(pos, length);
    }

    public void insertPositionUpdater(IPositionUpdater updater, int index) {
        int i = this.fPositionUpdaters.size() - 1;
        while (i >= 0) {
            if (this.fPositionUpdaters.get(i) == updater) {
                return;
            }
            --i;
        }
        if (index == this.fPositionUpdaters.size()) {
            this.fPositionUpdaters.add(updater);
        } else {
            this.fPositionUpdaters.add(index, updater);
        }
    }

    public void removePosition(String category, Position position) throws BadPositionCategoryException {
        if (position == null) {
            return;
        }
        if (category == null) {
            throw new BadPositionCategoryException();
        }
        List c = (List)this.fPositions.get(category);
        if (c == null) {
            throw new BadPositionCategoryException();
        }
        this.removeFromPositionsList(c, position, true);
        List endPositions = (List)this.fEndPositions.get(category);
        if (endPositions == null) {
            throw new BadPositionCategoryException();
        }
        this.removeFromPositionsList(endPositions, position, false);
    }

    private void removeFromPositionsList(List positions, Position position, boolean orderedByOffset) {
        int size = positions.size();
        int index = this.computeIndexInPositionList(positions, orderedByOffset ? position.offset : position.offset + position.length - 1, orderedByOffset);
        if (index < size && positions.get(index) == position) {
            positions.remove(index);
            return;
        }
        int back = index - 1;
        int forth = index + 1;
        while (back >= 0 || forth < size) {
            if (back >= 0) {
                if (position == positions.get(back)) {
                    positions.remove(back);
                    return;
                }
                --back;
            }
            if (forth >= size) continue;
            if (position == positions.get(forth)) {
                positions.remove(forth);
                return;
            }
            ++forth;
        }
    }

    public void removePosition(Position position) {
        try {
            this.removePosition("__dflt_position_category", position);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {}
    }

    public void removePositionCategory(String category) throws BadPositionCategoryException {
        if (category == null) {
            return;
        }
        if (!this.containsPositionCategory(category)) {
            throw new BadPositionCategoryException();
        }
        this.fPositions.remove(category);
        this.fEndPositions.remove(category);
    }

    public void removePositionUpdater(IPositionUpdater updater) {
        int i = this.fPositionUpdaters.size() - 1;
        while (i >= 0) {
            if (this.fPositionUpdaters.get(i) == updater) {
                this.fPositionUpdaters.remove(i);
                return;
            }
            --i;
        }
    }

    private long getNextModificationStamp() {
        this.fNextModificationStamp = this.fNextModificationStamp == Long.MAX_VALUE || this.fNextModificationStamp == -1L ? 0L : ++this.fNextModificationStamp;
        return this.fNextModificationStamp;
    }

    public long getModificationStamp() {
        return this.fModificationStamp;
    }

    public void replace(int pos, int length, String text, long modificationStamp) throws BadLocationException {
        if (pos < 0 || length < 0 || pos + length > this.getLength()) {
            throw new BadLocationException();
        }
        DocumentEvent e = new DocumentEvent(this, pos, length, text);
        this.fireDocumentAboutToBeChanged(e);
        this.getStore().replace(pos, length, text);
        this.getTracker().replace(pos, length, text);
        this.fModificationStamp = modificationStamp;
        this.fNextModificationStamp = Math.max(this.fModificationStamp, this.fNextModificationStamp);
        e.fModificationStamp = this.fModificationStamp;
        this.fireDocumentChanged(e);
    }

    public boolean isLineInformationRepairNeeded(int offset, int length, String text) throws BadLocationException {
        return false;
    }

    public void replace(int pos, int length, String text) throws BadLocationException {
        if (length == 0 && (text == null || text.length() == 0)) {
            this.replace(pos, length, text, this.getModificationStamp());
        } else {
            this.replace(pos, length, text, this.getNextModificationStamp());
        }
    }

    public void set(String text) {
        this.set(text, this.getNextModificationStamp());
    }

    public void set(String text, long modificationStamp) {
        int length = this.getStore().getLength();
        DocumentEvent e = new DocumentEvent(this, 0, length, text);
        this.fireDocumentAboutToBeChanged(e);
        this.getStore().set(text);
        this.getTracker().set(text);
        this.fModificationStamp = modificationStamp;
        this.fNextModificationStamp = Math.max(this.fModificationStamp, this.fNextModificationStamp);
        e.fModificationStamp = this.fModificationStamp;
        this.fireDocumentChanged(e);
    }

    protected void updatePositions(DocumentEvent event) {
        ArrayList list = new ArrayList(this.fPositionUpdaters);
        Iterator e = list.iterator();
        while (e.hasNext()) {
            IPositionUpdater u = (IPositionUpdater)e.next();
            u.update(event);
        }
    }

    public int search(int startPosition, String findString, boolean forwardSearch, boolean caseSensitive, boolean wholeWord) throws BadLocationException {
        try {
            IRegion region = this.getFindReplaceDocumentAdapter().find(startPosition, findString, forwardSearch, caseSensitive, wholeWord, false);
            return region == null ? -1 : region.getOffset();
        }
        catch (IllegalStateException illegalStateException) {
            return -1;
        }
        catch (PatternSyntaxException patternSyntaxException) {
            return -1;
        }
    }

    private FindReplaceDocumentAdapter getFindReplaceDocumentAdapter() {
        if (this.fFindReplaceDocumentAdapter == null) {
            this.fFindReplaceDocumentAdapter = new FindReplaceDocumentAdapter(this);
        }
        return this.fFindReplaceDocumentAdapter;
    }

    private void flushPostNotificationChanges() {
        if (this.fPostNotificationChanges != null) {
            this.fPostNotificationChanges.clear();
        }
    }

    /*
     * Unable to fully structure code
     */
    private void executePostNotificationChanges() {
        if (this.fStoppedCount <= 0) ** GOTO lbl10
        return;
lbl-1000:
        // 1 sources

        {
            changes = this.fPostNotificationChanges;
            this.fPostNotificationChanges = null;
            e = changes.iterator();
            while (e.hasNext()) {
                replace = (RegisteredReplace)e.next();
                replace.fReplace.perform(this, replace.fOwner);
            }
lbl10:
            // 2 sources

            ** while (this.fPostNotificationChanges != null)
        }
lbl11:
        // 1 sources

    }

    public void acceptPostNotificationReplaces() {
        this.fAcceptPostNotificationReplaces = true;
    }

    public void ignorePostNotificationReplaces() {
        this.fAcceptPostNotificationReplaces = false;
    }

    public void registerPostNotificationReplace(IDocumentListener owner, IDocumentExtension.IReplace replace) {
        if (this.fAcceptPostNotificationReplaces) {
            if (this.fPostNotificationChanges == null) {
                this.fPostNotificationChanges = new ArrayList(1);
            }
            this.fPostNotificationChanges.add(new RegisteredReplace(owner, replace));
        }
    }

    public void stopPostNotificationProcessing() {
        ++this.fStoppedCount;
    }

    public void resumePostNotificationProcessing() {
        --this.fStoppedCount;
        if (this.fStoppedCount == 0 && this.fReentranceCount == 0) {
            this.executePostNotificationChanges();
        }
    }

    public void startSequentialRewrite(boolean normalized) {
    }

    public void stopSequentialRewrite() {
    }

    public void resumeListenerNotification() {
        --this.fStoppedListenerNotification;
        if (this.fStoppedListenerNotification == 0) {
            this.resumeDocumentListenerNotification();
        }
    }

    public void stopListenerNotification() {
        ++this.fStoppedListenerNotification;
    }

    private void resumeDocumentListenerNotification() {
        if (this.fDeferredDocumentEvent != null) {
            DocumentEvent event = this.fDeferredDocumentEvent;
            this.fDeferredDocumentEvent = null;
            this.doFireDocumentChanged(event);
        }
    }

    public ITypedRegion[] computePartitioning(String partitioning, int offset, int length, boolean includeZeroLengthPartitions) throws BadLocationException, BadPartitioningException {
        if (offset < 0 || length < 0 || offset + length > this.getLength()) {
            throw new BadLocationException();
        }
        IDocumentPartitioner partitioner = this.getDocumentPartitioner(partitioning);
        if (partitioner instanceof IDocumentPartitionerExtension2) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return ((IDocumentPartitionerExtension2)((Object)partitioner)).computePartitioning(offset, length, includeZeroLengthPartitions);
        }
        if (partitioner != null) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return partitioner.computePartitioning(offset, length);
        }
        if ("__dftl_partitioning".equals(partitioning)) {
            return new TypedRegion[]{new TypedRegion(offset, length, "__dftl_partition_content_type")};
        }
        throw new BadPartitioningException();
    }

    public String getContentType(String partitioning, int offset, boolean preferOpenPartitions) throws BadLocationException, BadPartitioningException {
        if (offset < 0 || offset > this.getLength()) {
            throw new BadLocationException();
        }
        IDocumentPartitioner partitioner = this.getDocumentPartitioner(partitioning);
        if (partitioner instanceof IDocumentPartitionerExtension2) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return ((IDocumentPartitionerExtension2)((Object)partitioner)).getContentType(offset, preferOpenPartitions);
        }
        if (partitioner != null) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return partitioner.getContentType(offset);
        }
        if ("__dftl_partitioning".equals(partitioning)) {
            return "__dftl_partition_content_type";
        }
        throw new BadPartitioningException();
    }

    public IDocumentPartitioner getDocumentPartitioner(String partitioning) {
        return this.fDocumentPartitioners != null ? (IDocumentPartitioner)this.fDocumentPartitioners.get(partitioning) : null;
    }

    public String[] getLegalContentTypes(String partitioning) throws BadPartitioningException {
        IDocumentPartitioner partitioner = this.getDocumentPartitioner(partitioning);
        if (partitioner != null) {
            return partitioner.getLegalContentTypes();
        }
        if ("__dftl_partitioning".equals(partitioning)) {
            return new String[]{"__dftl_partition_content_type"};
        }
        throw new BadPartitioningException();
    }

    public ITypedRegion getPartition(String partitioning, int offset, boolean preferOpenPartitions) throws BadLocationException, BadPartitioningException {
        if (offset < 0 || offset > this.getLength()) {
            throw new BadLocationException();
        }
        IDocumentPartitioner partitioner = this.getDocumentPartitioner(partitioning);
        if (partitioner instanceof IDocumentPartitionerExtension2) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return ((IDocumentPartitionerExtension2)((Object)partitioner)).getPartition(offset, preferOpenPartitions);
        }
        if (partitioner != null) {
            this.checkStateOfPartitioner(partitioner, partitioning);
            return partitioner.getPartition(offset);
        }
        if ("__dftl_partitioning".equals(partitioning)) {
            return new TypedRegion(0, this.getLength(), "__dftl_partition_content_type");
        }
        throw new BadPartitioningException();
    }

    public String[] getPartitionings() {
        if (this.fDocumentPartitioners == null) {
            return new String[0];
        }
        String[] partitionings = new String[this.fDocumentPartitioners.size()];
        this.fDocumentPartitioners.keySet().toArray(partitionings);
        return partitionings;
    }

    public void setDocumentPartitioner(String partitioning, IDocumentPartitioner partitioner) {
        if (partitioner == null) {
            if (this.fDocumentPartitioners != null) {
                this.fDocumentPartitioners.remove(partitioning);
                if (this.fDocumentPartitioners.size() == 0) {
                    this.fDocumentPartitioners = null;
                }
            }
        } else {
            if (this.fDocumentPartitioners == null) {
                this.fDocumentPartitioners = new HashMap();
            }
            this.fDocumentPartitioners.put(partitioning, partitioner);
        }
        DocumentPartitioningChangedEvent event = new DocumentPartitioningChangedEvent(this);
        event.setPartitionChange(partitioning, 0, this.getLength());
        this.fireDocumentPartitioningChanged(event);
    }

    public void repairLineInformation() {
        this.getTracker().set(this.get());
    }

    protected void fireRewriteSessionChanged(DocumentRewriteSessionEvent event) {
        if (this.fDocumentRewriteSessionListeners.size() > 0) {
            ArrayList list = new ArrayList(this.fDocumentRewriteSessionListeners);
            Iterator e = list.iterator();
            while (e.hasNext()) {
                try {
                    IDocumentRewriteSessionListener l = (IDocumentRewriteSessionListener)e.next();
                    l.documentRewriteSessionChanged(event);
                }
                catch (Exception ex) {
                    AbstractDocument.log(ex);
                }
            }
        }
    }

    public final DocumentRewriteSession getActiveRewriteSession() {
        return this.fDocumentRewriteSession;
    }

    public DocumentRewriteSession startRewriteSession(DocumentRewriteSessionType sessionType) {
        if (this.getActiveRewriteSession() != null) {
            throw new IllegalStateException();
        }
        this.fDocumentRewriteSession = new DocumentRewriteSession(sessionType);
        this.fireRewriteSessionChanged(new DocumentRewriteSessionEvent(this, this.fDocumentRewriteSession, DocumentRewriteSessionEvent.SESSION_START));
        this.startRewriteSessionOnPartitioners(this.fDocumentRewriteSession);
        ILineTracker tracker = this.getTracker();
        if (tracker instanceof ILineTrackerExtension) {
            ILineTrackerExtension extension = (ILineTrackerExtension)((Object)tracker);
            extension.startRewriteSession(this.fDocumentRewriteSession);
        }
        if (DocumentRewriteSessionType.SEQUENTIAL == sessionType) {
            this.startSequentialRewrite(false);
        } else if (DocumentRewriteSessionType.STRICTLY_SEQUENTIAL == sessionType) {
            this.startSequentialRewrite(true);
        }
        return this.fDocumentRewriteSession;
    }

    protected final void startRewriteSessionOnPartitioners(DocumentRewriteSession session) {
        if (this.fDocumentPartitioners != null) {
            Iterator e = this.fDocumentPartitioners.values().iterator();
            while (e.hasNext()) {
                Object partitioner = e.next();
                if (!(partitioner instanceof IDocumentPartitionerExtension3)) continue;
                IDocumentPartitionerExtension3 extension = (IDocumentPartitionerExtension3)partitioner;
                extension.startRewriteSession(session);
            }
        }
    }

    public void stopRewriteSession(DocumentRewriteSession session) {
        if (this.fDocumentRewriteSession == session) {
            ILineTracker tracker;
            DocumentRewriteSessionType sessionType = session.getSessionType();
            if (DocumentRewriteSessionType.SEQUENTIAL == sessionType || DocumentRewriteSessionType.STRICTLY_SEQUENTIAL == sessionType) {
                this.stopSequentialRewrite();
            }
            if ((tracker = this.getTracker()) instanceof ILineTrackerExtension) {
                ILineTrackerExtension extension = (ILineTrackerExtension)((Object)tracker);
                extension.stopRewriteSession(session, this.get());
            }
            this.stopRewriteSessionOnPartitioners(this.fDocumentRewriteSession);
            this.fDocumentRewriteSession = null;
            this.fireRewriteSessionChanged(new DocumentRewriteSessionEvent(this, session, DocumentRewriteSessionEvent.SESSION_STOP));
        }
    }

    protected final void stopRewriteSessionOnPartitioners(DocumentRewriteSession session) {
        if (this.fDocumentPartitioners != null) {
            DocumentPartitioningChangedEvent event = new DocumentPartitioningChangedEvent(this);
            Iterator e = this.fDocumentPartitioners.keySet().iterator();
            while (e.hasNext()) {
                String partitioning = (String)e.next();
                IDocumentPartitioner partitioner = (IDocumentPartitioner)this.fDocumentPartitioners.get(partitioning);
                if (!(partitioner instanceof IDocumentPartitionerExtension3)) continue;
                IDocumentPartitionerExtension3 extension = (IDocumentPartitionerExtension3)((Object)partitioner);
                extension.stopRewriteSession(session);
                event.setPartitionChange(partitioning, 0, this.getLength());
            }
            if (!event.isEmpty()) {
                this.fireDocumentPartitioningChanged(event);
            }
        }
    }

    public void addDocumentRewriteSessionListener(IDocumentRewriteSessionListener listener) {
        Assert.isNotNull((Object)listener);
        if (!this.fDocumentRewriteSessionListeners.contains(listener)) {
            this.fDocumentRewriteSessionListeners.add(listener);
        }
    }

    public void removeDocumentRewriteSessionListener(IDocumentRewriteSessionListener listener) {
        Assert.isNotNull((Object)listener);
        this.fDocumentRewriteSessionListeners.remove(listener);
    }

    protected final void checkStateOfPartitioner(IDocumentPartitioner partitioner, String partitioning) {
        if (!(partitioner instanceof IDocumentPartitionerExtension3)) {
            return;
        }
        IDocumentPartitionerExtension3 extension = (IDocumentPartitionerExtension3)((Object)partitioner);
        DocumentRewriteSession session = extension.getActiveRewriteSession();
        if (session != null) {
            extension.stopRewriteSession(session);
            DocumentPartitioningChangedEvent event = new DocumentPartitioningChangedEvent(this);
            event.setPartitionChange(partitioning, 0, this.getLength());
            this.fireDocumentPartitioningChanged(event);
        }
    }

    public Position[] getPositions(String category, int offset, int length, boolean canStartBefore, boolean canEndAfter) throws BadPositionCategoryException {
        if (canStartBefore && canEndAfter || !canStartBefore && !canEndAfter) {
            List documentPositions = canStartBefore && canEndAfter ? (offset < this.getLength() / 2 ? this.getStartingPositions(category, 0, offset + length) : this.getEndingPositions(category, offset, this.getLength() - offset + 1)) : this.getStartingPositions(category, offset, length);
            ArrayList<Position> list = new ArrayList<Position>(documentPositions.size());
            Position region = new Position(offset, length);
            Iterator iterator = documentPositions.iterator();
            while (iterator.hasNext()) {
                Position position = (Position)iterator.next();
                if (!this.isWithinRegion(region, position, canStartBefore, canEndAfter)) continue;
                list.add(position);
            }
            Position[] positions = new Position[list.size()];
            list.toArray(positions);
            return positions;
        }
        if (canStartBefore) {
            List list = this.getEndingPositions(category, offset, length);
            Position[] positions = new Position[list.size()];
            list.toArray(positions);
            return positions;
        }
        Assert.isLegal((canEndAfter && !canStartBefore ? 1 : 0) != 0);
        List list = this.getStartingPositions(category, offset, length);
        Position[] positions = new Position[list.size()];
        list.toArray(positions);
        return positions;
    }

    private boolean isWithinRegion(Position region, Position position, boolean canStartBefore, boolean canEndAfter) {
        if (canStartBefore && canEndAfter) {
            return region.overlapsWith(position.getOffset(), position.getLength());
        }
        if (canStartBefore) {
            return region.includes(position.getOffset() + position.getLength() - 1);
        }
        if (canEndAfter) {
            return region.includes(position.getOffset());
        }
        int start = position.getOffset();
        return region.includes(start) && region.includes(start + position.getLength() - 1);
    }

    private List getStartingPositions(String category, int offset, int length) throws BadPositionCategoryException {
        List positions = (List)this.fPositions.get(category);
        if (positions == null) {
            throw new BadPositionCategoryException();
        }
        int indexStart = this.computeIndexInPositionList(positions, offset, true);
        int indexEnd = this.computeIndexInPositionList(positions, offset + length, true);
        return positions.subList(indexStart, indexEnd);
    }

    private List getEndingPositions(String category, int offset, int length) throws BadPositionCategoryException {
        List positions = (List)this.fEndPositions.get(category);
        if (positions == null) {
            throw new BadPositionCategoryException();
        }
        int indexStart = this.computeIndexInPositionList(positions, offset, false);
        int indexEnd = this.computeIndexInPositionList(positions, offset + length, false);
        return positions.subList(indexStart, indexEnd);
    }

    private static void log(final Exception ex) {
        SafeRunner.run((ISafeRunnable)new ISafeRunnable(){

            public void run() throws Exception {
                throw ex;
            }

            public void handleException(Throwable exception) {
            }
        });
    }

    private static class RegisteredReplace {
        IDocumentListener fOwner;
        IDocumentExtension.IReplace fReplace;

        RegisteredReplace(IDocumentListener owner, IDocumentExtension.IReplace replace) {
            this.fOwner = owner;
            this.fReplace = replace;
        }
    }
}

