/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.AbstractDocument;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.ISynchronizable;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.AnnotationMap;
import org.eclipse.jface.text.source.AnnotationModelEvent;
import org.eclipse.jface.text.source.IAnnotationMap;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.IAnnotationModelExtension2;
import org.eclipse.jface.text.source.IAnnotationModelListener;
import org.eclipse.jface.text.source.IAnnotationModelListenerExtension;

public class AnnotationModel
implements IAnnotationModel,
IAnnotationModelExtension,
IAnnotationModelExtension2,
ISynchronizable {
    protected Map fAnnotations;
    private IdentityHashMap fPositions;
    protected ArrayList fAnnotationModelListeners;
    protected IDocument fDocument;
    private int fOpenConnections = 0;
    private IDocumentListener fDocumentListener;
    private boolean fDocumentChanged = true;
    private Map fAttachments = new HashMap();
    private IAnnotationModelListener fModelListener = new InternalModelListener();
    private AnnotationModelEvent fModelEvent;
    private Object fModificationStamp = new Object();

    public AnnotationModel() {
        this.fAnnotations = new AnnotationMap(10);
        this.fPositions = new IdentityHashMap(10);
        this.fAnnotationModelListeners = new ArrayList(2);
        this.fDocumentListener = new IDocumentListener(){

            public void documentAboutToBeChanged(DocumentEvent event) {
            }

            public void documentChanged(DocumentEvent event) {
                AnnotationModel.this.fDocumentChanged = true;
            }
        };
    }

    protected IAnnotationMap getAnnotationMap() {
        return (IAnnotationMap)this.fAnnotations;
    }

    public Object getLockObject() {
        return this.getAnnotationMap().getLockObject();
    }

    public void setLockObject(Object lockObject) {
        this.getAnnotationMap().setLockObject(lockObject);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected final AnnotationModelEvent getAnnotationModelEvent() {
        Object object = this.getLockObject();
        synchronized (object) {
            if (this.fModelEvent == null) {
                this.fModelEvent = this.createAnnotationModelEvent();
                this.fModelEvent.markWorldChange(false);
                this.fModificationStamp = new Object();
            }
            return this.fModelEvent;
        }
    }

    public void addAnnotation(Annotation annotation, Position position) {
        try {
            this.addAnnotation(annotation, position, true);
        }
        catch (BadLocationException badLocationException) {}
    }

    public void replaceAnnotations(Annotation[] annotationsToRemove, Map annotationsToAdd) {
        try {
            this.replaceAnnotations(annotationsToRemove, annotationsToAdd, true);
        }
        catch (BadLocationException badLocationException) {}
    }

    protected void replaceAnnotations(Annotation[] annotationsToRemove, Map annotationsToAdd, boolean fireModelChanged) throws BadLocationException {
        if (annotationsToRemove != null) {
            int i = 0;
            int length = annotationsToRemove.length;
            while (i < length) {
                this.removeAnnotation(annotationsToRemove[i], false);
                ++i;
            }
        }
        if (annotationsToAdd != null) {
            Iterator iter = annotationsToAdd.entrySet().iterator();
            while (iter.hasNext()) {
                Map.Entry mapEntry = iter.next();
                Annotation annotation = (Annotation)mapEntry.getKey();
                Position position = (Position)mapEntry.getValue();
                this.addAnnotation(annotation, position, false);
            }
        }
        if (fireModelChanged) {
            this.fireModelChanged();
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void addAnnotation(Annotation annotation, Position position, boolean fireModelChanged) throws BadLocationException {
        if (!this.fAnnotations.containsKey(annotation)) {
            this.addPosition(this.fDocument, position);
            this.fAnnotations.put(annotation, position);
            this.fPositions.put(position, annotation);
            Object object = this.getLockObject();
            synchronized (object) {
                this.getAnnotationModelEvent().annotationAdded(annotation);
            }
            if (fireModelChanged) {
                this.fireModelChanged();
            }
        }
    }

    public void addAnnotationModelListener(IAnnotationModelListener listener) {
        if (!this.fAnnotationModelListeners.contains(listener)) {
            this.fAnnotationModelListeners.add(listener);
            if (listener instanceof IAnnotationModelListenerExtension) {
                IAnnotationModelListenerExtension extension = (IAnnotationModelListenerExtension)((Object)listener);
                AnnotationModelEvent event = this.createAnnotationModelEvent();
                event.markSealed();
                extension.modelChanged(event);
            } else {
                listener.modelChanged(this);
            }
        }
    }

    protected void addPosition(IDocument document, Position position) throws BadLocationException {
        if (document != null) {
            document.addPosition(position);
        }
    }

    protected void removePosition(IDocument document, Position position) {
        if (document != null) {
            document.removePosition(position);
        }
    }

    public void connect(IDocument document) {
        Assert.isTrue((this.fDocument == null || this.fDocument == document ? 1 : 0) != 0);
        if (this.fDocument == null) {
            this.fDocument = document;
            Iterator e = this.getAnnotationMap().valuesIterator();
            while (e.hasNext()) {
                try {
                    this.addPosition(document, (Position)e.next());
                }
                catch (BadLocationException badLocationException) {}
            }
        }
        ++this.fOpenConnections;
        if (this.fOpenConnections == 1) {
            document.addDocumentListener(this.fDocumentListener);
            this.connected();
        }
        Iterator it = this.fAttachments.keySet().iterator();
        while (it.hasNext()) {
            IAnnotationModel model = (IAnnotationModel)this.fAttachments.get(it.next());
            model.connect(document);
        }
    }

    protected void connected() {
    }

    protected void disconnected() {
    }

    public void disconnect(IDocument document) {
        Assert.isTrue((this.fDocument == document ? 1 : 0) != 0);
        Iterator it = this.fAttachments.keySet().iterator();
        while (it.hasNext()) {
            IAnnotationModel model = (IAnnotationModel)this.fAttachments.get(it.next());
            model.disconnect(document);
        }
        --this.fOpenConnections;
        if (this.fOpenConnections == 0) {
            this.disconnected();
            document.removeDocumentListener(this.fDocumentListener);
            Iterator e = this.getAnnotationMap().valuesIterator();
            while (e.hasNext()) {
                Position p = (Position)e.next();
                this.removePosition(document, p);
            }
            this.fDocument = null;
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void fireModelChanged() {
        AnnotationModelEvent modelEvent = null;
        Object object = this.getLockObject();
        synchronized (object) {
            if (this.fModelEvent != null) {
                modelEvent = this.fModelEvent;
                this.fModelEvent = null;
            }
        }
        if (modelEvent != null) {
            this.fireModelChanged(modelEvent);
        }
    }

    protected AnnotationModelEvent createAnnotationModelEvent() {
        return new AnnotationModelEvent(this);
    }

    protected void fireModelChanged(AnnotationModelEvent event) {
        event.markSealed();
        if (event.isEmpty()) {
            return;
        }
        ArrayList v = new ArrayList(this.fAnnotationModelListeners);
        Iterator e = v.iterator();
        while (e.hasNext()) {
            IAnnotationModelListener l = (IAnnotationModelListener)e.next();
            if (l instanceof IAnnotationModelListenerExtension) {
                ((IAnnotationModelListenerExtension)((Object)l)).modelChanged(event);
                continue;
            }
            if (l == null) continue;
            l.modelChanged(this);
        }
    }

    protected void removeAnnotations(List annotations, boolean fireModelChanged, boolean modelInitiated) {
        if (annotations.size() > 0) {
            Iterator e = annotations.iterator();
            while (e.hasNext()) {
                this.removeAnnotation((Annotation)e.next(), false);
            }
            if (fireModelChanged) {
                this.fireModelChanged();
            }
        }
    }

    protected void cleanup(boolean fireModelChanged) {
        this.cleanup(fireModelChanged, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    private void cleanup(boolean fireModelChanged, boolean forkNotification) {
        if (this.fDocumentChanged) {
            this.fDocumentChanged = false;
            ArrayList<Annotation> deleted = new ArrayList<Annotation>();
            Iterator e = this.getAnnotationMap().keySetIterator();
            while (e.hasNext()) {
                Annotation a = (Annotation)e.next();
                Position p = (Position)this.fAnnotations.get(a);
                if (p != null && !p.isDeleted()) continue;
                deleted.add(a);
            }
            if (fireModelChanged && forkNotification) {
                this.removeAnnotations(deleted, false, false);
                Object object = this.getLockObject();
                synchronized (object) {
                    if (this.fModelEvent != null) {
                        new Thread(){

                            public void run() {
                                AnnotationModel.this.fireModelChanged();
                            }
                        }.start();
                    }
                }
            } else {
                this.removeAnnotations(deleted, fireModelChanged, false);
            }
        }
    }

    public Iterator getAnnotationIterator() {
        return this.getAnnotationIterator(true, true);
    }

    public Iterator getAnnotationIterator(int offset, int length, boolean canStartBefore, boolean canEndAfter) {
        Iterator regionIterator = this.getRegionAnnotationIterator(offset, length, canStartBefore, canEndAfter);
        if (this.fAttachments.isEmpty()) {
            return regionIterator;
        }
        ArrayList<Iterator> iterators = new ArrayList<Iterator>(this.fAttachments.size() + 1);
        iterators.add(regionIterator);
        Iterator it = this.fAttachments.keySet().iterator();
        while (it.hasNext()) {
            IAnnotationModel attachment = (IAnnotationModel)this.fAttachments.get(it.next());
            if (attachment instanceof IAnnotationModelExtension2) {
                iterators.add(((IAnnotationModelExtension2)((Object)attachment)).getAnnotationIterator(offset, length, canStartBefore, canEndAfter));
                continue;
            }
            iterators.add(new RegionIterator(attachment.getAnnotationIterator(), attachment, offset, length, canStartBefore, canEndAfter));
        }
        return new MetaIterator(iterators.iterator());
    }

    private Iterator getRegionAnnotationIterator(int offset, int length, boolean canStartBefore, boolean canEndAfter) {
        if (!(this.fDocument instanceof AbstractDocument)) {
            return new RegionIterator(this.getAnnotationIterator(true), this, offset, length, canStartBefore, canEndAfter);
        }
        AbstractDocument document = (AbstractDocument)this.fDocument;
        this.cleanup(true);
        try {
            Position[] positions = document.getPositions("__dflt_position_category", offset, length, canStartBefore, canEndAfter);
            return new AnnotationsInterator(positions, this.fPositions);
        }
        catch (BadPositionCategoryException badPositionCategoryException) {
            Assert.isTrue((boolean)false);
            return null;
        }
    }

    private Iterator getAnnotationIterator(boolean cleanup, boolean recurse) {
        Iterator iter = this.getAnnotationIterator(cleanup);
        if (!recurse || this.fAttachments.isEmpty()) {
            return iter;
        }
        ArrayList<Iterator> iterators = new ArrayList<Iterator>(this.fAttachments.size() + 1);
        iterators.add(iter);
        Iterator it = this.fAttachments.keySet().iterator();
        while (it.hasNext()) {
            iterators.add(((IAnnotationModel)this.fAttachments.get(it.next())).getAnnotationIterator());
        }
        return new MetaIterator(iterators.iterator());
    }

    protected Iterator getAnnotationIterator(boolean cleanup) {
        if (cleanup) {
            this.cleanup(true);
        }
        return this.getAnnotationMap().keySetIterator();
    }

    public Position getPosition(Annotation annotation) {
        Position position = (Position)this.fAnnotations.get(annotation);
        if (position != null) {
            return position;
        }
        Iterator it = this.fAttachments.values().iterator();
        while (position == null && it.hasNext()) {
            position = ((IAnnotationModel)it.next()).getPosition(annotation);
        }
        return position;
    }

    public void removeAllAnnotations() {
        this.removeAllAnnotations(true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeAllAnnotations(boolean fireModelChanged) {
        if (this.fDocument != null) {
            Iterator e = this.getAnnotationMap().keySetIterator();
            while (e.hasNext()) {
                Annotation a = (Annotation)e.next();
                Position p = (Position)this.fAnnotations.get(a);
                this.removePosition(this.fDocument, p);
                Object object = this.getLockObject();
                synchronized (object) {
                    this.getAnnotationModelEvent().annotationRemoved(a, p);
                }
            }
        }
        this.fAnnotations.clear();
        this.fPositions.clear();
        if (fireModelChanged) {
            this.fireModelChanged();
        }
    }

    public void removeAnnotation(Annotation annotation) {
        this.removeAnnotation(annotation, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void removeAnnotation(Annotation annotation, boolean fireModelChanged) {
        if (this.fAnnotations.containsKey(annotation)) {
            Position p = null;
            p = (Position)this.fAnnotations.get(annotation);
            if (this.fDocument != null) {
                this.removePosition(this.fDocument, p);
            }
            this.fAnnotations.remove(annotation);
            this.fPositions.remove(p);
            Object object = this.getLockObject();
            synchronized (object) {
                this.getAnnotationModelEvent().annotationRemoved(annotation, p);
            }
            if (fireModelChanged) {
                this.fireModelChanged();
            }
        }
    }

    public void modifyAnnotationPosition(Annotation annotation, Position position) {
        this.modifyAnnotationPosition(annotation, position, true);
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void modifyAnnotationPosition(Annotation annotation, Position position, boolean fireModelChanged) {
        if (position == null) {
            this.removeAnnotation(annotation, fireModelChanged);
        } else {
            Position p = (Position)this.fAnnotations.get(annotation);
            if (p != null) {
                if (position.getOffset() != p.getOffset() || position.getLength() != p.getLength()) {
                    this.fDocument.removePosition(p);
                    p.setOffset(position.getOffset());
                    p.setLength(position.getLength());
                    try {
                        this.fDocument.addPosition(p);
                    }
                    catch (BadLocationException badLocationException) {}
                }
                Object object = this.getLockObject();
                synchronized (object) {
                    this.getAnnotationModelEvent().annotationChanged(annotation);
                }
                if (fireModelChanged) {
                    this.fireModelChanged();
                }
            } else {
                try {
                    this.addAnnotation(annotation, position, fireModelChanged);
                }
                catch (BadLocationException badLocationException) {}
            }
        }
    }

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    protected void modifyAnnotation(Annotation annotation, boolean fireModelChanged) {
        if (this.fAnnotations.containsKey(annotation)) {
            Object object = this.getLockObject();
            synchronized (object) {
                this.getAnnotationModelEvent().annotationChanged(annotation);
            }
            if (fireModelChanged) {
                this.fireModelChanged();
            }
        }
    }

    public void removeAnnotationModelListener(IAnnotationModelListener listener) {
        this.fAnnotationModelListeners.remove(listener);
    }

    public void addAnnotationModel(Object key, IAnnotationModel attachment) {
        Assert.isNotNull((Object)attachment);
        if (!this.fAttachments.containsValue(attachment)) {
            this.fAttachments.put(key, attachment);
            int i = 0;
            while (i < this.fOpenConnections) {
                attachment.connect(this.fDocument);
                ++i;
            }
            attachment.addAnnotationModelListener(this.fModelListener);
        }
    }

    public IAnnotationModel getAnnotationModel(Object key) {
        return (IAnnotationModel)this.fAttachments.get(key);
    }

    public IAnnotationModel removeAnnotationModel(Object key) {
        IAnnotationModel ret = (IAnnotationModel)this.fAttachments.remove(key);
        if (ret != null) {
            int i = 0;
            while (i < this.fOpenConnections) {
                ret.disconnect(this.fDocument);
                ++i;
            }
            ret.removeAnnotationModelListener(this.fModelListener);
        }
        return ret;
    }

    public Object getModificationStamp() {
        return this.fModificationStamp;
    }

    private static final class AnnotationsInterator
    implements Iterator {
        private Object fNext;
        private final Position[] fPositions;
        private int fIndex;
        private final Map fMap;

        public AnnotationsInterator(Position[] positions, Map map) {
            this.fPositions = positions;
            this.fIndex = 0;
            this.fMap = map;
            this.fNext = this.findNext();
        }

        public boolean hasNext() {
            return this.fNext != null;
        }

        public Object next() {
            Object result = this.fNext;
            this.fNext = this.findNext();
            return result;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        private Object findNext() {
            while (this.fIndex < this.fPositions.length) {
                Position position = this.fPositions[this.fIndex];
                ++this.fIndex;
                if (!this.fMap.containsKey(position)) continue;
                return this.fMap.get(position);
            }
            return null;
        }
    }

    private class InternalModelListener
    implements IAnnotationModelListener,
    IAnnotationModelListenerExtension {
        private InternalModelListener() {
        }

        public void modelChanged(IAnnotationModel model) {
            AnnotationModel.this.fireModelChanged(new AnnotationModelEvent(model, true));
        }

        public void modelChanged(AnnotationModelEvent event) {
            AnnotationModel.this.fireModelChanged(event);
        }
    }

    private static class MetaIterator
    implements Iterator {
        private Iterator fSuperIterator;
        private Iterator fCurrent;
        private Object fCurrentElement;

        public MetaIterator(Iterator iterator) {
            this.fSuperIterator = iterator;
            this.fCurrent = (Iterator)this.fSuperIterator.next();
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        public boolean hasNext() {
            if (this.fCurrentElement != null) {
                return true;
            }
            if (this.fCurrent.hasNext()) {
                this.fCurrentElement = this.fCurrent.next();
                return true;
            }
            if (this.fSuperIterator.hasNext()) {
                this.fCurrent = (Iterator)this.fSuperIterator.next();
                return this.hasNext();
            }
            return false;
        }

        public Object next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            Object element = this.fCurrentElement;
            this.fCurrentElement = null;
            return element;
        }
    }

    private static final class RegionIterator
    implements Iterator {
        private final Iterator fParentIterator;
        private final boolean fCanEndAfter;
        private final boolean fCanStartBefore;
        private final IAnnotationModel fModel;
        private Object fNext;
        private Position fRegion;

        public RegionIterator(Iterator parentIterator, IAnnotationModel model, int offset, int length, boolean canStartBefore, boolean canEndAfter) {
            this.fParentIterator = parentIterator;
            this.fModel = model;
            this.fRegion = new Position(offset, length);
            this.fCanEndAfter = canEndAfter;
            this.fCanStartBefore = canStartBefore;
            this.fNext = this.findNext();
        }

        public boolean hasNext() {
            return this.fNext != null;
        }

        public Object next() {
            if (!this.hasNext()) {
                throw new NoSuchElementException();
            }
            Object result = this.fNext;
            this.fNext = this.findNext();
            return result;
        }

        public void remove() {
            throw new UnsupportedOperationException();
        }

        private Object findNext() {
            while (this.fParentIterator.hasNext()) {
                int offset;
                Annotation next = (Annotation)this.fParentIterator.next();
                Position position = this.fModel.getPosition(next);
                if (position == null || !this.isWithinRegion(offset = position.getOffset(), position.getLength())) continue;
                return next;
            }
            return null;
        }

        private boolean isWithinRegion(int start, int length) {
            if (this.fCanStartBefore && this.fCanEndAfter) {
                return this.fRegion.overlapsWith(start, length);
            }
            if (this.fCanStartBefore) {
                return this.fRegion.includes(start + length - (length > 0 ? 1 : 0));
            }
            if (this.fCanEndAfter) {
                return this.fRegion.includes(start);
            }
            return this.fRegion.includes(start) && this.fRegion.includes(start + length - (length > 0 ? 1 : 0));
        }
    }
}

