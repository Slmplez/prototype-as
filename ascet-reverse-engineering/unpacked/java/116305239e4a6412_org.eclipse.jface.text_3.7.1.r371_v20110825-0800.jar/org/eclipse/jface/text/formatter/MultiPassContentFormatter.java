/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DefaultPositionUpdater
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.ITypedRegion
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.text.TypedPosition
 */
package org.eclipse.jface.text.formatter;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DefaultPositionUpdater;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITypedRegion;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.TypedPosition;
import org.eclipse.jface.text.formatter.FormattingContext;
import org.eclipse.jface.text.formatter.IContentFormatter;
import org.eclipse.jface.text.formatter.IContentFormatterExtension;
import org.eclipse.jface.text.formatter.IFormattingContext;
import org.eclipse.jface.text.formatter.IFormattingStrategy;
import org.eclipse.jface.text.formatter.IFormattingStrategyExtension;

public class MultiPassContentFormatter
implements IContentFormatter,
IContentFormatterExtension {
    private IFormattingStrategyExtension fMaster = null;
    private final String fPartitioning;
    private final Map fSlaves = new HashMap();
    private final String fType;

    public MultiPassContentFormatter(String partitioning, String type) {
        this.fPartitioning = partitioning;
        this.fType = type;
    }

    public final void format(IDocument medium, IFormattingContext context) {
        context.setProperty("formatting.context.medium", medium);
        Boolean document = (Boolean)context.getProperty("formatting.context.document");
        if (document == null || !document.booleanValue()) {
            IRegion region = (IRegion)context.getProperty("formatting.context.region");
            if (region != null) {
                try {
                    this.formatMaster(context, medium, region.getOffset(), region.getLength());
                }
                finally {
                    this.formatSlaves(context, medium, region.getOffset(), region.getLength());
                }
            }
        } else {
            try {
                this.formatMaster(context, medium, 0, medium.getLength());
            }
            finally {
                this.formatSlaves(context, medium, 0, medium.getLength());
            }
        }
    }

    public final void format(IDocument medium, IRegion region) {
        FormattingContext context = new FormattingContext();
        context.setProperty("formatting.context.document", Boolean.FALSE);
        context.setProperty("formatting.context.region", region);
        this.format(medium, context);
    }

    protected void formatMaster(IFormattingContext context, IDocument document, int offset, int length) {
        try {
            int delta = offset - document.getLineInformationOfOffset(offset).getOffset();
            offset -= delta;
            length += delta;
        }
        catch (BadLocationException badLocationException) {}
        if (this.fMaster != null) {
            context.setProperty("formatting.context.partition", new TypedPosition(offset, length, this.fType));
            this.fMaster.formatterStarts(context);
            this.fMaster.format();
            this.fMaster.formatterStops();
        }
    }

    protected void formatSlave(IFormattingContext context, IDocument document, int offset, int length, String type) {
        IFormattingStrategyExtension strategy = (IFormattingStrategyExtension)this.fSlaves.get(type);
        if (strategy != null) {
            context.setProperty("formatting.context.partition", new TypedPosition(offset, length, type));
            strategy.formatterStarts(context);
            strategy.format();
            strategy.formatterStops();
        }
    }

    protected void formatSlaves(IFormattingContext context, IDocument document, int offset, int length) {
        Map partitioners = new HashMap(0);
        try {
            try {
                ITypedRegion[] partitions = TextUtilities.computePartitioning((IDocument)document, (String)this.fPartitioning, (int)offset, (int)length, (boolean)false);
                if (!this.fType.equals(partitions[0].getType())) {
                    partitions[0] = TextUtilities.getPartition((IDocument)document, (String)this.fPartitioning, (int)partitions[0].getOffset(), (boolean)false);
                }
                if (partitions.length > 1 && !this.fType.equals(partitions[partitions.length - 1].getType())) {
                    partitions[partitions.length - 1] = TextUtilities.getPartition((IDocument)document, (String)this.fPartitioning, (int)partitions[partitions.length - 1].getOffset(), (boolean)false);
                }
                String type = null;
                ITypedRegion partition = null;
                partitioners = TextUtilities.removeDocumentPartitioners((IDocument)document);
                int index = partitions.length - 1;
                while (index >= 0) {
                    partition = partitions[index];
                    type = partition.getType();
                    if (!this.fType.equals(type)) {
                        this.formatSlave(context, document, partition.getOffset(), partition.getLength(), type);
                    }
                    --index;
                }
            }
            catch (BadLocationException badLocationException) {
                TextUtilities.addDocumentPartitioners((IDocument)document, partitioners);
            }
        }
        finally {
            TextUtilities.addDocumentPartitioners((IDocument)document, partitioners);
        }
    }

    public final IFormattingStrategy getFormattingStrategy(String type) {
        return null;
    }

    public final void setMasterStrategy(IFormattingStrategy strategy) {
        Assert.isTrue((boolean)(strategy instanceof IFormattingStrategyExtension));
        this.fMaster = (IFormattingStrategyExtension)((Object)strategy);
    }

    public final void setSlaveStrategy(IFormattingStrategy strategy, String type) {
        Assert.isTrue((boolean)(strategy instanceof IFormattingStrategyExtension));
        if (!this.fType.equals(type)) {
            this.fSlaves.put(type, strategy);
        }
    }

    protected class NonDeletingPositionUpdater
    extends DefaultPositionUpdater {
        public NonDeletingPositionUpdater(String category) {
            super(category);
        }

        protected final boolean notDeleted() {
            int offset;
            if (this.fOffset < this.fPosition.offset && this.fPosition.offset + this.fPosition.length < this.fOffset + this.fLength && (offset = this.fOffset + this.fLength) < this.fDocument.getLength()) {
                try {
                    boolean moved = false;
                    char character = this.fDocument.getChar(offset);
                    while (offset < this.fDocument.getLength() && Character.isWhitespace(character)) {
                        moved = true;
                        character = this.fDocument.getChar(offset++);
                    }
                    if (moved) {
                        --offset;
                    }
                }
                catch (BadLocationException badLocationException) {}
                this.fPosition.offset = offset;
                this.fPosition.length = 0;
            }
            return true;
        }
    }
}

