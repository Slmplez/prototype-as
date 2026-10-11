/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.preference.IPreferenceStore
 *  org.eclipse.jface.preference.PreferenceConverter
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.DocumentEvent
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IDocumentListener
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.util.IPropertyChangeListener
 *  org.eclipse.jface.util.PropertyChangeEvent
 *  org.eclipse.swt.custom.StyleRange
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Color
 *  org.eclipse.swt.graphics.Device
 *  org.eclipse.swt.graphics.RGB
 */
package org.eclipse.jface.text.hyperlink;

import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.preference.IPreferenceStore;
import org.eclipse.jface.preference.PreferenceConverter;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.DocumentEvent;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IDocumentListener;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextInputListener;
import org.eclipse.jface.text.ITextPresentationListener;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension2;
import org.eclipse.jface.text.ITextViewerExtension4;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextPresentation;
import org.eclipse.jface.text.hyperlink.IHyperlink;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenter;
import org.eclipse.jface.text.hyperlink.IHyperlinkPresenterExtension;
import org.eclipse.jface.util.IPropertyChangeListener;
import org.eclipse.jface.util.PropertyChangeEvent;
import org.eclipse.swt.custom.StyleRange;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Color;
import org.eclipse.swt.graphics.Device;
import org.eclipse.swt.graphics.RGB;

public class DefaultHyperlinkPresenter
implements IHyperlinkPresenter,
IHyperlinkPresenterExtension,
ITextPresentationListener,
ITextInputListener,
IDocumentListener,
IPropertyChangeListener {
    public static final String HYPERLINK_COLOR = "hyperlinkColor";
    public static final String HYPERLINK_COLOR_SYSTEM_DEFAULT = "hyperlinkColor.SystemDefault";
    private ITextViewer fTextViewer;
    private Color fColor;
    private boolean fIsUsingNativeLinkColor;
    private RGB fRGB;
    private boolean fDisposeColor;
    private IRegion fActiveRegion;
    private Position fRememberedPosition;
    private IPreferenceStore fPreferenceStore;

    public DefaultHyperlinkPresenter(IPreferenceStore store) {
        this.fPreferenceStore = store;
        this.fDisposeColor = true;
    }

    public DefaultHyperlinkPresenter(Color color) {
        this.fColor = color;
    }

    public DefaultHyperlinkPresenter(RGB color) {
        this.fRGB = color;
        this.fDisposeColor = true;
    }

    public boolean canShowMultipleHyperlinks() {
        return false;
    }

    public void showHyperlinks(IHyperlink[] hyperlinks) {
        Assert.isLegal((hyperlinks != null && hyperlinks.length == 1 ? 1 : 0) != 0);
        this.highlightRegion(hyperlinks[0].getHyperlinkRegion());
    }

    public boolean canHideHyperlinks() {
        return true;
    }

    public void hideHyperlinks() {
        this.repairRepresentation();
        this.fRememberedPosition = null;
    }

    public void install(ITextViewer textViewer) {
        StyledText text;
        Assert.isNotNull((Object)textViewer);
        this.fTextViewer = textViewer;
        this.fTextViewer.addTextInputListener(this);
        if (this.fTextViewer instanceof ITextViewerExtension4) {
            ((ITextViewerExtension4)((Object)this.fTextViewer)).addTextPresentationListener(this);
        }
        if (this.fPreferenceStore != null) {
            this.fIsUsingNativeLinkColor = this.fPreferenceStore.getBoolean(HYPERLINK_COLOR_SYSTEM_DEFAULT);
            if (!this.fIsUsingNativeLinkColor) {
                this.fColor = this.createColorFromPreferenceStore();
            }
            this.fPreferenceStore.addPropertyChangeListener((IPropertyChangeListener)this);
        } else if (this.fRGB != null && (text = this.fTextViewer.getTextWidget()) != null && !text.isDisposed()) {
            this.fColor = new Color((Device)text.getDisplay(), this.fRGB);
        }
    }

    public void uninstall() {
        this.fTextViewer.removeTextInputListener(this);
        IDocument document = this.fTextViewer.getDocument();
        if (document != null) {
            document.removeDocumentListener((IDocumentListener)this);
        }
        if (this.fColor != null) {
            if (this.fDisposeColor) {
                this.fColor.dispose();
            }
            this.fColor = null;
        }
        if (this.fTextViewer instanceof ITextViewerExtension4) {
            ((ITextViewerExtension4)((Object)this.fTextViewer)).removeTextPresentationListener(this);
        }
        this.fTextViewer = null;
        if (this.fPreferenceStore != null) {
            this.fPreferenceStore.removePropertyChangeListener((IPropertyChangeListener)this);
            this.fPreferenceStore = null;
        }
    }

    public void setColor(Color color) {
        Assert.isNotNull((Object)this.fTextViewer);
        Assert.isTrue((this.fPreferenceStore == null ? 1 : 0) != 0, (String)"Cannot set color if preference store is set");
        if (this.fColor != null && this.fDisposeColor) {
            this.fColor.dispose();
        }
        this.fColor = color;
    }

    public void applyTextPresentation(TextPresentation textPresentation) {
        if (this.fActiveRegion == null) {
            return;
        }
        IRegion region = textPresentation.getExtent();
        if (this.fActiveRegion.getOffset() + this.fActiveRegion.getLength() >= region.getOffset() && region.getOffset() + region.getLength() > this.fActiveRegion.getOffset()) {
            Color color = null;
            if (!this.fIsUsingNativeLinkColor) {
                color = this.fColor;
            }
            StyleRange styleRange = new StyleRange(this.fActiveRegion.getOffset(), this.fActiveRegion.getLength(), color, null);
            styleRange.underlineStyle = 4;
            styleRange.underline = true;
            textPresentation.mergeStyleRange(styleRange);
        }
    }

    private void highlightRegion(IRegion region) {
        if (region.equals(this.fActiveRegion)) {
            return;
        }
        this.repairRepresentation();
        StyledText text = this.fTextViewer.getTextWidget();
        if (text == null || text.isDisposed()) {
            return;
        }
        this.fActiveRegion = region;
        if (this.fTextViewer instanceof ITextViewerExtension2) {
            ((ITextViewerExtension2)((Object)this.fTextViewer)).invalidateTextPresentation(region.getOffset(), region.getLength());
        } else {
            this.fTextViewer.invalidateTextPresentation();
        }
    }

    private void repairRepresentation() {
        if (this.fActiveRegion == null) {
            return;
        }
        int offset = this.fActiveRegion.getOffset();
        int length = this.fActiveRegion.getLength();
        this.fActiveRegion = null;
        if (this.fTextViewer instanceof ITextViewerExtension2) {
            ((ITextViewerExtension2)((Object)this.fTextViewer)).invalidateTextPresentation(offset, length);
        } else {
            this.fTextViewer.invalidateTextPresentation();
        }
    }

    public void documentAboutToBeChanged(DocumentEvent event) {
        if (this.fActiveRegion != null) {
            this.fRememberedPosition = new Position(this.fActiveRegion.getOffset(), this.fActiveRegion.getLength());
            try {
                event.getDocument().addPosition(this.fRememberedPosition);
            }
            catch (BadLocationException badLocationException) {
                this.fRememberedPosition = null;
            }
        }
    }

    public void documentChanged(DocumentEvent event) {
        if (this.fRememberedPosition != null) {
            if (!this.fRememberedPosition.isDeleted()) {
                event.getDocument().removePosition(this.fRememberedPosition);
                this.fActiveRegion = new Region(this.fRememberedPosition.getOffset(), this.fRememberedPosition.getLength());
            } else {
                this.fActiveRegion = new Region(event.getOffset(), event.getLength());
            }
            this.fRememberedPosition = null;
            StyledText widget = this.fTextViewer.getTextWidget();
            if (widget != null && !widget.isDisposed()) {
                widget.getDisplay().asyncExec(new Runnable(){

                    public void run() {
                        DefaultHyperlinkPresenter.this.hideHyperlinks();
                    }
                });
            }
        }
    }

    public void inputDocumentAboutToBeChanged(IDocument oldInput, IDocument newInput) {
        if (oldInput == null) {
            return;
        }
        this.hideHyperlinks();
        oldInput.removeDocumentListener((IDocumentListener)this);
    }

    public void inputDocumentChanged(IDocument oldInput, IDocument newInput) {
        if (newInput == null) {
            return;
        }
        newInput.addDocumentListener((IDocumentListener)this);
    }

    private Color createColorFromPreferenceStore() {
        StyledText textWidget = this.fTextViewer.getTextWidget();
        if (textWidget == null || textWidget.isDisposed()) {
            return null;
        }
        RGB rgb = null;
        if (this.fPreferenceStore.contains(HYPERLINK_COLOR) && (rgb = this.fPreferenceStore.isDefault(HYPERLINK_COLOR) ? PreferenceConverter.getDefaultColor((IPreferenceStore)this.fPreferenceStore, (String)HYPERLINK_COLOR) : PreferenceConverter.getColor((IPreferenceStore)this.fPreferenceStore, (String)HYPERLINK_COLOR)) != null) {
            return new Color((Device)textWidget.getDisplay(), rgb);
        }
        return null;
    }

    public void propertyChange(PropertyChangeEvent event) {
        if (HYPERLINK_COLOR.equals(event.getProperty())) {
            if (this.fColor != null && this.fDisposeColor) {
                this.fColor.dispose();
            }
            this.fColor = this.createColorFromPreferenceStore();
            return;
        }
        if (HYPERLINK_COLOR_SYSTEM_DEFAULT.equals(event.getProperty())) {
            this.fIsUsingNativeLinkColor = this.fPreferenceStore.getBoolean(HYPERLINK_COLOR_SYSTEM_DEFAULT);
            if (!this.fIsUsingNativeLinkColor && this.fColor == null) {
                this.fColor = this.createColorFromPreferenceStore();
            }
            return;
        }
    }
}

