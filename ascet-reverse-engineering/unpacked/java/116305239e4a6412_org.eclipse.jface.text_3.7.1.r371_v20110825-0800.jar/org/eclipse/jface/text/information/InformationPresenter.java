/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.Region
 *  org.eclipse.jface.text.TextUtilities
 *  org.eclipse.jface.util.Geometry
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.ControlEvent
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.FocusEvent
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.KeyEvent
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseEvent
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.jface.text.information;

import java.util.HashMap;
import java.util.Map;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.AbstractInformationControlManager;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.IViewportListener;
import org.eclipse.jface.text.IWidgetTokenKeeper;
import org.eclipse.jface.text.IWidgetTokenKeeperExtension;
import org.eclipse.jface.text.IWidgetTokenOwner;
import org.eclipse.jface.text.IWidgetTokenOwnerExtension;
import org.eclipse.jface.text.Region;
import org.eclipse.jface.text.TextUtilities;
import org.eclipse.jface.text.information.IInformationPresenter;
import org.eclipse.jface.text.information.IInformationPresenterExtension;
import org.eclipse.jface.text.information.IInformationProvider;
import org.eclipse.jface.text.information.IInformationProviderExtension;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.util.Geometry;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ControlEvent;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.FocusEvent;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.KeyEvent;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseEvent;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;

public class InformationPresenter
extends AbstractInformationControlManager
implements IInformationPresenter,
IInformationPresenterExtension,
IWidgetTokenKeeper,
IWidgetTokenKeeperExtension {
    public static final int WIDGET_PRIORITY = 5;
    private ITextViewer fTextViewer;
    private Map fProviders;
    private int fOffset = -1;
    private String fPartitioning;

    public InformationPresenter(IInformationControlCreator creator) {
        super(creator);
        this.setCloser(new Closer());
        this.takesFocusWhenVisible(true);
        this.fPartitioning = "__dftl_partitioning";
    }

    public void setDocumentPartitioning(String partitioning) {
        Assert.isNotNull((Object)partitioning);
        this.fPartitioning = partitioning;
    }

    public String getDocumentPartitioning() {
        return this.fPartitioning;
    }

    public void setInformationProvider(IInformationProvider provider, String contentType) {
        Assert.isNotNull((Object)contentType);
        if (this.fProviders == null) {
            this.fProviders = new HashMap();
        }
        if (provider == null) {
            this.fProviders.remove(contentType);
        } else {
            this.fProviders.put(contentType, provider);
        }
    }

    public IInformationProvider getInformationProvider(String contentType) {
        if (this.fProviders == null) {
            return null;
        }
        return (IInformationProvider)this.fProviders.get(contentType);
    }

    public void setOffset(int offset) {
        this.fOffset = offset;
    }

    protected void computeInformation() {
        Object info;
        int offset;
        int n = offset = this.fOffset < 0 ? this.fTextViewer.getSelectedRange().x : this.fOffset;
        if (offset == -1) {
            return;
        }
        this.fOffset = -1;
        IInformationProvider provider = null;
        try {
            String contentType = TextUtilities.getContentType((IDocument)this.fTextViewer.getDocument(), (String)this.getDocumentPartitioning(), (int)offset, (boolean)true);
            provider = this.getInformationProvider(contentType);
        }
        catch (BadLocationException badLocationException) {}
        if (provider == null) {
            return;
        }
        IRegion subject = provider.getSubject(this.fTextViewer, offset);
        if (subject == null) {
            return;
        }
        if (provider instanceof IInformationProviderExtension) {
            IInformationProviderExtension extension = (IInformationProviderExtension)((Object)provider);
            info = extension.getInformation2(this.fTextViewer, subject);
        } else {
            info = provider.getInformation(this.fTextViewer, subject);
        }
        if (provider instanceof IInformationProviderExtension2) {
            this.setCustomInformationControlCreator(((IInformationProviderExtension2)((Object)provider)).getInformationPresenterControlCreator());
        } else {
            this.setCustomInformationControlCreator(null);
        }
        this.setInformation(info, this.computeArea(subject));
    }

    private Rectangle computeArea(IRegion region) {
        Rectangle bounds;
        int start = 0;
        int end = 0;
        IRegion widgetRegion = this.modelRange2WidgetRange(region);
        if (widgetRegion != null) {
            start = widgetRegion.getOffset();
            end = widgetRegion.getOffset() + widgetRegion.getLength();
        }
        StyledText styledText = this.fTextViewer.getTextWidget();
        if (end > 0 && start < end) {
            bounds = styledText.getTextBounds(start, end - 1);
        } else {
            Point loc = styledText.getLocationAtOffset(start);
            bounds = new Rectangle(loc.x, loc.y, 0, styledText.getLineHeight(start));
        }
        Rectangle clientArea = styledText.getClientArea();
        Geometry.moveInside((Rectangle)bounds, (Rectangle)clientArea);
        return bounds;
    }

    private IRegion modelRange2WidgetRange(IRegion region) {
        if (this.fTextViewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)this.fTextViewer);
            return extension.modelRange2WidgetRange(region);
        }
        IRegion visibleRegion = this.fTextViewer.getVisibleRegion();
        int start = region.getOffset() - visibleRegion.getOffset();
        int end = start + region.getLength();
        if (end > visibleRegion.getLength()) {
            end = visibleRegion.getLength();
        }
        return new Region(start, end - start);
    }

    public void install(ITextViewer textViewer) {
        this.fTextViewer = textViewer;
        this.install((Control)this.fTextViewer.getTextWidget());
    }

    public void uninstall() {
        this.dispose();
    }

    protected void showInformationControl(Rectangle subjectArea) {
        if (this.fTextViewer instanceof IWidgetTokenOwnerExtension && this.fTextViewer instanceof IWidgetTokenOwner) {
            IWidgetTokenOwnerExtension extension = (IWidgetTokenOwnerExtension)((Object)this.fTextViewer);
            if (extension.requestWidgetToken(this, 5)) {
                super.showInformationControl(subjectArea);
            }
        } else if (this.fTextViewer instanceof IWidgetTokenOwner) {
            IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fTextViewer);
            if (owner.requestWidgetToken(this)) {
                super.showInformationControl(subjectArea);
            }
        } else {
            super.showInformationControl(subjectArea);
        }
    }

    protected void hideInformationControl() {
        try {
            super.hideInformationControl();
        }
        finally {
            if (this.fTextViewer instanceof IWidgetTokenOwner) {
                IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fTextViewer);
                owner.releaseWidgetToken(this);
            }
        }
    }

    protected void handleInformationControlDisposed() {
        try {
            super.handleInformationControlDisposed();
        }
        finally {
            if (this.fTextViewer instanceof IWidgetTokenOwner) {
                IWidgetTokenOwner owner = (IWidgetTokenOwner)((Object)this.fTextViewer);
                owner.releaseWidgetToken(this);
            }
        }
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner) {
        return false;
    }

    public boolean requestWidgetToken(IWidgetTokenOwner owner, int priority) {
        return false;
    }

    public boolean setFocus(IWidgetTokenOwner owner) {
        return false;
    }

    class Closer
    implements AbstractInformationControlManager.IInformationControlCloser,
    ControlListener,
    MouseListener,
    FocusListener,
    IViewportListener,
    KeyListener {
        private Control fSubjectControl;
        private IInformationControl fInformationControlToClose;
        private boolean fIsActive = false;

        Closer() {
        }

        public void setSubjectControl(Control control) {
            this.fSubjectControl = control;
        }

        public void setInformationControl(IInformationControl control) {
            this.fInformationControlToClose = control;
        }

        public void start(Rectangle informationArea) {
            if (this.fIsActive) {
                return;
            }
            this.fIsActive = true;
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.addControlListener((ControlListener)this);
                this.fSubjectControl.addMouseListener((MouseListener)this);
                this.fSubjectControl.addFocusListener((FocusListener)this);
                this.fSubjectControl.addKeyListener((KeyListener)this);
            }
            if (this.fInformationControlToClose != null) {
                this.fInformationControlToClose.addFocusListener(this);
            }
            InformationPresenter.this.fTextViewer.addViewportListener(this);
        }

        public void stop() {
            if (!this.fIsActive) {
                return;
            }
            this.fIsActive = false;
            InformationPresenter.this.fTextViewer.removeViewportListener(this);
            if (this.fInformationControlToClose != null) {
                this.fInformationControlToClose.removeFocusListener(this);
            }
            if (this.fSubjectControl != null && !this.fSubjectControl.isDisposed()) {
                this.fSubjectControl.removeControlListener((ControlListener)this);
                this.fSubjectControl.removeMouseListener((MouseListener)this);
                this.fSubjectControl.removeFocusListener((FocusListener)this);
                this.fSubjectControl.removeKeyListener((KeyListener)this);
            }
        }

        public void controlResized(ControlEvent e) {
            InformationPresenter.this.hideInformationControl();
        }

        public void controlMoved(ControlEvent e) {
            InformationPresenter.this.hideInformationControl();
        }

        public void mouseDown(MouseEvent e) {
            InformationPresenter.this.hideInformationControl();
        }

        public void mouseUp(MouseEvent e) {
        }

        public void mouseDoubleClick(MouseEvent e) {
            InformationPresenter.this.hideInformationControl();
        }

        public void focusGained(FocusEvent e) {
        }

        public void focusLost(FocusEvent e) {
            Display d = this.fSubjectControl.getDisplay();
            d.asyncExec(new Runnable(this){
                final /* synthetic */ Closer this$1;
                {
                    this.this$1 = closer;
                }

                public void run() {
                    if (Closer.access$0(this.this$1) == null || !Closer.access$0(this.this$1).isFocusControl()) {
                        Closer.access$1(this.this$1).hideInformationControl();
                    }
                }
            });
        }

        public void viewportChanged(int topIndex) {
            InformationPresenter.this.hideInformationControl();
        }

        public void keyPressed(KeyEvent e) {
            InformationPresenter.this.hideInformationControl();
        }

        public void keyReleased(KeyEvent e) {
        }

        static /* synthetic */ IInformationControl access$0(Closer closer) {
            return closer.fInformationControlToClose;
        }

        static /* synthetic */ InformationPresenter access$1(Closer closer) {
            return closer.InformationPresenter.this;
        }
    }
}

