/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.BadPositionCategoryException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.DocumentPartitioningChangedEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IDocumentPartitioningListener
 *  org.eclipse.jface.text.IDocumentPartitioningListenerExtension
 *  org.eclipse.jface.text.IDocumentPartitioningListenerExtension2
 *  org.eclipse.jface.text.IPositionUpdater
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.TypedPosition
 *  org.eclipse.swt.custom.StyleRange
 */
package org.eclipse.jface.text.presentation;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.BadPositionCategoryException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.DocumentPartitioningChangedEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IDocumentPartitioningListener;
import org.eclipse.jface.text.IDocumentPartitioningListenerExtension;
import org.eclipse.jface.text.IDocumentPartitioningListenerExtension2;
import org.eclipse.jface.text.IPositionUpdater;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextEvent;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedPosition;
import org.eclipse.jface.text.presentation.IPresentationDamager;
import org.eclipse.jface.text.presentation.IPresentationReconciler;
import org.eclipse.jface.text.presentation.IPresentationReconcilerExtension;
import org.eclipse.jface.text.presentation.IPresentationRepairer;
import org.eclipse.swt.custom.StyleRange;

public class PresentationReconciler
implements IPresentationReconciler,
IPresentationReconcilerExtension {
    protected static final String TRACKED_PARTITION = "__reconciler_tracked_partition";
    private Map fDamagers;
    private Map fRepairers;
    private ITextViewer fViewer;
    private InternalListener fInternalListener = new InternalListener();
    private String fPositionCategory = "__reconciler_tracked_partition" + this.hashCode();
    private IPositionUpdater fPositionUpdater = new DefaultPositionUpdater(this.fPositionCategory);
    private TypedPosition fRememberedPosition;
    private boolean fDocumentPartitioningChanged = false;
    private IRegion fChangedDocumentPartitions = null;
    private String fPartitioning = "__dftl_partitioning";

    public void setDocumentPartitioning(String partitioning) {
        Assert.isNotNull((Object)partitioning);
        this.fPartitioning = partitioning;
    }

    public String getDocumentPartitioning() {
        return this.fPartitioning;
    }

    public void setDamager(IPresentationDamager damager, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fDamagers == null) {
            this.fDamagers = new HashMap();
        }
        if (damager == null) {
            this.fDamagers.remove(contentType);
        } else {
            this.fDamagers.put(contentType, damager);
        }
    }

    public void setRepairer(IPresentationRepairer repairer, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fRepairers == null) {
            this.fRepairers = new HashMap();
        }
        if (repairer == null) {
            this.fRepairers.remove(contentType);
        } else {
            this.fRepairers.put(contentType, repairer);
        }
    }

    public void install(ITextViewer viewer) {
        Assert.isNotNull((Object)viewer);
        this.fViewer = viewer;
        this.fViewer.addTextInputListener(this.fInternalListener);
        IDocument document = viewer.getDocument();
        if (document != null) {
            this.fInternalListener.inputDocumentChanged(null, document);
        }
    }

    public void uninstall() {
        this.fViewer.removeTextInputListener(this.fInternalListener);
        this.fInternalListener.inputDocumentAboutToBeChanged(this.fViewer.getDocument(), null);
    }

    public IPresentationDamager getDamager(String contentType) {
        if (this.fDamagers == null) {
            return null;
        }
        return (IPresentationDamager)this.fDamagers.get(contentType);
    }

    public IPresentationRepairer getRepairer(String contentType) {
        if (this.fRepairers == null) {
            return null;
        }
        return (IPresentationRepairer)this.fRepairers.get(contentType);
    }

    protected void setDocumentToDamagers(IDocument document) {
        if (this.fDamagers != null) {
            Iterator e = this.fDamagers.values().iterator();
            while (e.hasNext()) {
                IPresentationDamager damager = (IPresentationDamager)e.next();
                damager.setDocument(document);
            }
        }
    }

    protected void setDocumentToRepairers(IDocument document) {
        if (this.fRepairers != null) {
            Iterator e = this.fRepairers.values().iterator();
            while (e.hasNext()) {
                IPresentationRepairer repairer = (IPresentationRepairer)e.next();
                repairer.setDocument(document);
            }
        }
    }

    protected TextPresentation createPresentation(IRegion damage, IDocument document) {
        try {
            if (this.fRepairers == null || this.fRepairers.isEmpty()) {
                TextPresentation presentation = new TextPresentation(damage, 100);
                presentation.setDefaultStyleRange(new StyleRange(damage.getOffset(), damage.getLength(), null, null));
                return presentation;
            }
            TextPresentation presentation = new TextPresentation(damage, 1000);
            ITypedRegion[] partitioning = TextUtilities.computePartitioning((IDocument)document, (String)this.getDocumentPartitioning(), (int)damage.getOffset(), (int)damage.getLength(), (boolean)false);
            int i = 0;
            while (i < partitioning.length) {
                ITypedRegion r = partitioning[i];
                IPresentationRepairer repairer = this.getRepairer(r.getType());
                if (repairer != null) {
                    repairer.createPresentation(presentation, r);
                }
                ++i;
            }
            return presentation;
        }
        catch (BadLocationException badLocationException) {
            return null;
        }
    }

    private IRegion getDamage(DocumentEvent e, boolean optimize) {
        ITypedRegion partition;
        IPresentationDamager damager;
        IRegion damage;
        boolean isDeletion;
        block8: {
            int length;
            int n = length = e.getText() == null ? 0 : e.getText().length();
            if (this.fDamagers == null || this.fDamagers.isEmpty()) {
                length = Math.max(e.getLength(), length);
                length = Math.min(e.getDocument().getLength() - e.getOffset(), length);
                return new Region(e.getOffset(), length);
            }
            isDeletion = length == 0;
            damage = null;
            try {
                int offset = e.getOffset();
                if (isDeletion) {
                    offset = Math.max(0, offset - 1);
                }
                if ((damager = this.getDamager((partition = this.getPartition(e.getDocument(), offset)).getType())) != null) break block8;
                return null;
            }
            catch (BadLocationException badLocationException) {}
        }
        IRegion r = damager.getDamageRegion(partition, e, this.fDocumentPartitioningChanged);
        if (!this.fDocumentPartitioningChanged && optimize && !isDeletion) {
            damage = r;
        } else {
            int damageStart = r.getOffset();
            int damageEnd = this.getDamageEndOffset(e);
            if (this.fChangedDocumentPartitions != null) {
                damageStart = Math.min(damageStart, this.fChangedDocumentPartitions.getOffset());
                damageEnd = Math.max(damageEnd, this.fChangedDocumentPartitions.getOffset() + this.fChangedDocumentPartitions.getLength());
            }
            damage = damageEnd == -1 ? r : new Region(damageStart, damageEnd - damageStart);
        }
        return damage;
    }

    private int getDamageEndOffset(DocumentEvent e) throws BadLocationException {
        IPresentationDamager damager;
        int end;
        ITypedRegion partition;
        int endOffset;
        IDocument d = e.getDocument();
        int length = 0;
        if (e.getText() != null && (length = e.getText().length()) > 0) {
            --length;
        }
        if ((endOffset = (partition = this.getPartition(d, e.getOffset() + length)).getOffset() + partition.getLength()) == e.getOffset()) {
            return -1;
        }
        int n = end = this.fRememberedPosition == null ? -1 : this.fRememberedPosition.getOffset() + this.fRememberedPosition.getLength();
        if (endOffset < end && end < d.getLength()) {
            partition = this.getPartition(d, end);
        }
        if ((damager = this.getDamager(partition.getType())) == null) {
            return -1;
        }
        IRegion r = damager.getDamageRegion(partition, e, this.fDocumentPartitioningChanged);
        return r.getOffset() + r.getLength();
    }

    private void processDamage(IRegion damage, IDocument document) {
        TextPresentation p;
        if (damage != null && damage.getLength() > 0 && (p = this.createPresentation(damage, document)) != null) {
            this.applyTextRegionCollection(p);
        }
    }

    private void applyTextRegionCollection(TextPresentation presentation) {
        this.fViewer.changeTextPresentation(presentation, false);
    }

    private ITypedRegion getPartition(IDocument document, int offset) throws BadLocationException {
        return TextUtilities.getPartition((IDocument)document, (String)this.getDocumentPartitioning(), (int)offset, (boolean)false);
    }

    class InternalListener
    implements ITextInputListener,
    IDocumentListener,
    ITextListener,
    IDocumentPartitioningListener,
    IDocumentPartitioningListenerExtension,
    IDocumentPartitioningListenerExtension2 {
        private boolean fDocumentChanging = false;
        private boolean fCachedRedrawState = true;

        InternalListener() {
        }

        public void inputDocumentAboutToBeChanged(IDocument oldDocument, IDocument newDocument) {
            if (oldDocument != null) {
                try {
                    PresentationReconciler.this.fViewer.removeTextListener(this);
                    oldDocument.removeDocumentListener((IDocumentListener)this);
                    oldDocument.removeDocumentPartitioningListener((IDocumentPartitioningListener)this);
                    oldDocument.removePositionUpdater(PresentationReconciler.this.fPositionUpdater);
                    oldDocument.removePositionCategory(PresentationReconciler.this.fPositionCategory);
                }
                catch (BadPositionCategoryException badPositionCategoryException) {}
            }
        }

        public void inputDocumentChanged(IDocument oldDocument, IDocument newDocument) {
            this.fDocumentChanging = false;
            this.fCachedRedrawState = true;
            if (newDocument != null) {
                newDocument.addPositionCategory(PresentationReconciler.this.fPositionCategory);
                newDocument.addPositionUpdater(PresentationReconciler.this.fPositionUpdater);
                newDocument.addDocumentPartitioningListener((IDocumentPartitioningListener)this);
                newDocument.addDocumentListener((IDocumentListener)this);
                PresentationReconciler.this.fViewer.addTextListener(this);
                PresentationReconciler.this.setDocumentToDamagers(newDocument);
                PresentationReconciler.this.setDocumentToRepairers(newDocument);
                PresentationReconciler.this.processDamage((IRegion)new Region(0, newDocument.getLength()), newDocument);
            }
        }

        public void documentPartitioningChanged(IDocument document) {
            if (!this.fDocumentChanging && this.fCachedRedrawState) {
                PresentationReconciler.this.processDamage((IRegion)new Region(0, document.getLength()), document);
            } else {
                PresentationReconciler.this.fDocumentPartitioningChanged = true;
            }
        }

        public void documentPartitioningChanged(IDocument document, IRegion changedRegion) {
            if (!this.fDocumentChanging && this.fCachedRedrawState) {
                PresentationReconciler.this.processDamage((IRegion)new Region(changedRegion.getOffset(), changedRegion.getLength()), document);
            } else {
                PresentationReconciler.this.fDocumentPartitioningChanged = true;
                PresentationReconciler.this.fChangedDocumentPartitions = changedRegion;
            }
        }

        public void documentPartitioningChanged(DocumentPartitioningChangedEvent event) {
            IRegion changedRegion = event.getChangedRegion(PresentationReconciler.this.getDocumentPartitioning());
            if (changedRegion != null) {
                this.documentPartitioningChanged(event.getDocument(), changedRegion);
            }
        }

        public void documentAboutToBeChanged(DocumentEvent e) {
            this.fDocumentChanging = true;
            if (this.fCachedRedrawState) {
                try {
                    int offset = e.getOffset() + e.getLength();
                    ITypedRegion region = PresentationReconciler.this.getPartition(e.getDocument(), offset);
                    PresentationReconciler.this.fRememberedPosition = new TypedPosition(region);
                    e.getDocument().addPosition(PresentationReconciler.this.fPositionCategory, (Position)PresentationReconciler.this.fRememberedPosition);
                }
                catch (BadLocationException badLocationException) {
                }
                catch (BadPositionCategoryException badPositionCategoryException) {}
            }
        }

        public void documentChanged(DocumentEvent e) {
            if (this.fCachedRedrawState) {
                try {
                    e.getDocument().removePosition(PresentationReconciler.this.fPositionCategory, (Position)PresentationReconciler.this.fRememberedPosition);
                }
                catch (BadPositionCategoryException badPositionCategoryException) {}
            }
            this.fDocumentChanging = false;
        }

        public void textChanged(TextEvent e) {
            this.fCachedRedrawState = e.getViewerRedrawState();
            if (!this.fCachedRedrawState) {
                return;
            }
            IRegion damage = null;
            IDocument document = null;
            if (e.getDocumentEvent() == null) {
                document = PresentationReconciler.this.fViewer.getDocument();
                if (document != null) {
                    if (e.getOffset() == 0 && e.getLength() == 0 && e.getText() == null) {
                        damage = new Region(0, document.getLength());
                    } else {
                        IRegion region = this.widgetRegion2ModelRegion(e);
                        try {
                            String text = document.get(region.getOffset(), region.getLength());
                            DocumentEvent de = new DocumentEvent(document, region.getOffset(), region.getLength(), text);
                            damage = PresentationReconciler.this.getDamage(de, false);
                        }
                        catch (BadLocationException badLocationException) {}
                    }
                }
            } else {
                DocumentEvent de = e.getDocumentEvent();
                document = de.getDocument();
                damage = PresentationReconciler.this.getDamage(de, true);
            }
            if (damage != null && document != null) {
                PresentationReconciler.this.processDamage(damage, document);
            }
            PresentationReconciler.this.fDocumentPartitioningChanged = false;
            PresentationReconciler.this.fChangedDocumentPartitions = null;
        }

        protected IRegion widgetRegion2ModelRegion(TextEvent e) {
            int length;
            String text = e.getText();
            int n = length = text == null ? 0 : text.length();
            if (PresentationReconciler.this.fViewer instanceof ITextViewerExtension5) {
                ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)PresentationReconciler.this.fViewer);
                return extension.widgetRange2ModelRange((IRegion)new Region(e.getOffset(), length));
            }
            IRegion visible = PresentationReconciler.this.fViewer.getVisibleRegion();
            Region region = new Region(e.getOffset() + visible.getOffset(), length);
            return region;
        }
    }
}

