/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.IRegion
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.events.ControlListener
 *  org.eclipse.swt.events.DisposeEvent
 *  org.eclipse.swt.events.DisposeListener
 *  org.eclipse.swt.events.FocusListener
 *  org.eclipse.swt.events.HelpListener
 *  org.eclipse.swt.events.KeyListener
 *  org.eclipse.swt.events.MouseListener
 *  org.eclipse.swt.events.MouseMoveListener
 *  org.eclipse.swt.events.MouseTrackListener
 *  org.eclipse.swt.events.PaintListener
 *  org.eclipse.swt.events.TraverseListener
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.graphics.Rectangle
 *  org.eclipse.swt.widgets.Canvas
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Display
 *  org.eclipse.swt.widgets.Event
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Listener
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
import java.util.EventListener;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.eclipse.core.runtime.Assert;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IRegion;
import org.eclipse.jface.text.ITextViewer;
import org.eclipse.jface.text.ITextViewerExtension;
import org.eclipse.jface.text.ITextViewerExtension5;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IVerticalRuler;
import org.eclipse.jface.text.source.IVerticalRulerColumn;
import org.eclipse.jface.text.source.IVerticalRulerExtension;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.VerticalRulerEvent;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.events.ControlListener;
import org.eclipse.swt.events.DisposeEvent;
import org.eclipse.swt.events.DisposeListener;
import org.eclipse.swt.events.FocusListener;
import org.eclipse.swt.events.HelpListener;
import org.eclipse.swt.events.KeyListener;
import org.eclipse.swt.events.MouseListener;
import org.eclipse.swt.events.MouseMoveListener;
import org.eclipse.swt.events.MouseTrackListener;
import org.eclipse.swt.events.PaintListener;
import org.eclipse.swt.events.TraverseListener;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.graphics.Rectangle;
import org.eclipse.swt.widgets.Canvas;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Display;
import org.eclipse.swt.widgets.Event;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Listener;
import org.eclipse.swt.widgets.Menu;

public class CompositeRuler
implements IVerticalRuler,
IVerticalRulerExtension,
IVerticalRulerInfoExtension {
    private ITextViewer fTextViewer;
    private CompositeRulerCanvas fComposite;
    private IAnnotationModel fModel;
    private List fDecorators = new ArrayList(2);
    private Point fLocation = new Point(-1, -1);
    private int fLastMouseButtonActivityLine = -1;
    private int fGap;
    private Set fAnnotationListeners = new HashSet();
    static /* synthetic */ Class class$0;
    static /* synthetic */ Class class$1;
    static /* synthetic */ Class class$2;
    static /* synthetic */ Class class$3;
    static /* synthetic */ Class class$4;
    static /* synthetic */ Class class$5;
    static /* synthetic */ Class class$6;
    static /* synthetic */ Class class$7;
    static /* synthetic */ Class class$8;
    static /* synthetic */ Class class$9;

    public CompositeRuler() {
        this(0);
    }

    public CompositeRuler(int gap) {
        this.fGap = gap;
    }

    public void addDecorator(int index, IVerticalRulerColumn rulerColumn) {
        rulerColumn.setModel(this.getModel());
        if (index > this.fDecorators.size()) {
            this.fDecorators.add(rulerColumn);
        } else {
            this.fDecorators.add(index, rulerColumn);
        }
        if (this.fComposite != null && !this.fComposite.isDisposed()) {
            rulerColumn.createControl(this, (Composite)this.fComposite);
            this.fComposite.childAdded(rulerColumn.getControl());
            this.layoutTextViewer();
        }
    }

    public void removeDecorator(int index) {
        IVerticalRulerColumn rulerColumn = (IVerticalRulerColumn)this.fDecorators.get(index);
        this.removeDecorator(rulerColumn);
    }

    public void removeDecorator(IVerticalRulerColumn rulerColumn) {
        Control cc;
        this.fDecorators.remove(rulerColumn);
        if (rulerColumn != null && (cc = rulerColumn.getControl()) != null && !cc.isDisposed()) {
            this.fComposite.childRemoved(cc);
            cc.dispose();
        }
        this.layoutTextViewer();
    }

    private void layoutTextViewer() {
        StyledText parent = this.fTextViewer.getTextWidget();
        if (this.fTextViewer instanceof ITextViewerExtension) {
            ITextViewerExtension extension = (ITextViewerExtension)((Object)this.fTextViewer);
            parent = extension.getControl();
        }
        if (parent instanceof Composite && !parent.isDisposed()) {
            ((Composite)parent).layout(true);
        }
    }

    public Control getControl() {
        return this.fComposite;
    }

    public Control createControl(Composite parent, ITextViewer textViewer) {
        this.fTextViewer = textViewer;
        this.fComposite = new CompositeRulerCanvas(parent, 0);
        this.fComposite.setLayout(new RulerLayout());
        Iterator iter = this.fDecorators.iterator();
        while (iter.hasNext()) {
            IVerticalRulerColumn column = (IVerticalRulerColumn)iter.next();
            column.createControl(this, (Composite)this.fComposite);
            this.fComposite.childAdded(column.getControl());
        }
        return this.fComposite;
    }

    public void setModel(IAnnotationModel model) {
        this.fModel = model;
        Iterator e = this.fDecorators.iterator();
        while (e.hasNext()) {
            IVerticalRulerColumn column = (IVerticalRulerColumn)e.next();
            column.setModel(model);
        }
    }

    public IAnnotationModel getModel() {
        return this.fModel;
    }

    public void update() {
        Display d;
        if (this.fComposite != null && !this.fComposite.isDisposed() && (d = this.fComposite.getDisplay()) != null) {
            d.asyncExec(new Runnable(){

                public void run() {
                    CompositeRuler.this.immediateUpdate();
                }
            });
        }
    }

    public void immediateUpdate() {
        Iterator e = this.fDecorators.iterator();
        while (e.hasNext()) {
            IVerticalRulerColumn column = (IVerticalRulerColumn)e.next();
            column.redraw();
        }
    }

    public void setFont(Font font) {
        Iterator e = this.fDecorators.iterator();
        while (e.hasNext()) {
            IVerticalRulerColumn column = (IVerticalRulerColumn)e.next();
            column.setFont(font);
        }
    }

    public int getWidth() {
        int width = 0;
        Iterator e = this.fDecorators.iterator();
        while (e.hasNext()) {
            IVerticalRulerColumn column = (IVerticalRulerColumn)e.next();
            width += column.getWidth() + this.fGap;
        }
        return Math.max(0, width - this.fGap);
    }

    public int getLineOfLastMouseButtonActivity() {
        if (this.fLastMouseButtonActivityLine == -1) {
            this.fLastMouseButtonActivityLine = this.toDocumentLineNumber(this.fLocation.y);
        } else if (this.fTextViewer.getDocument() == null || this.fLastMouseButtonActivityLine >= this.fTextViewer.getDocument().getNumberOfLines()) {
            this.fLastMouseButtonActivityLine = -1;
        }
        return this.fLastMouseButtonActivityLine;
    }

    public int toDocumentLineNumber(int y_coordinate) {
        if (this.fTextViewer == null || y_coordinate == -1) {
            return -1;
        }
        StyledText text = this.fTextViewer.getTextWidget();
        int line = text.getLineIndex(y_coordinate);
        if (line == text.getLineCount() - 1 && y_coordinate > text.getLinePixel(line + 1)) {
            return -1;
        }
        return CompositeRuler.widgetLine2ModelLine(this.fTextViewer, line);
    }

    protected static final int widgetLine2ModelLine(ITextViewer viewer, int widgetLine) {
        if (viewer instanceof ITextViewerExtension5) {
            ITextViewerExtension5 extension = (ITextViewerExtension5)((Object)viewer);
            return extension.widgetLine2ModelLine(widgetLine);
        }
        try {
            IRegion r = viewer.getVisibleRegion();
            IDocument d = viewer.getDocument();
            return widgetLine += d.getLineOfOffset(r.getOffset());
        }
        catch (BadLocationException badLocationException) {
            return widgetLine;
        }
    }

    public ITextViewer getTextViewer() {
        return this.fTextViewer;
    }

    public void setLocationOfLastMouseButtonActivity(int x, int y) {
        this.fLocation.x = x;
        this.fLocation.y = y;
        this.fLastMouseButtonActivityLine = -1;
    }

    public Iterator getDecoratorIterator() {
        Assert.isNotNull((Object)this.fDecorators, (String)"fDecorators must be initialized");
        return this.fDecorators.iterator();
    }

    public IAnnotationHover getHover() {
        return null;
    }

    public void addVerticalRulerListener(IVerticalRulerListener listener) {
        this.fAnnotationListeners.add(listener);
    }

    public void removeVerticalRulerListener(IVerticalRulerListener listener) {
        this.fAnnotationListeners.remove(listener);
    }

    public void fireAnnotationSelected(VerticalRulerEvent event) {
        Iterator it = this.fAnnotationListeners.iterator();
        while (it.hasNext()) {
            IVerticalRulerListener listener = (IVerticalRulerListener)it.next();
            listener.annotationSelected(event);
        }
    }

    public void fireAnnotationDefaultSelected(VerticalRulerEvent event) {
        Iterator it = this.fAnnotationListeners.iterator();
        while (it.hasNext()) {
            IVerticalRulerListener listener = (IVerticalRulerListener)it.next();
            listener.annotationDefaultSelected(event);
        }
    }

    public void fireAnnotationContextMenuAboutToShow(VerticalRulerEvent event, Menu menu) {
        Iterator it = this.fAnnotationListeners.iterator();
        while (it.hasNext()) {
            IVerticalRulerListener listener = (IVerticalRulerListener)it.next();
            listener.annotationContextMenuAboutToShow(event, menu);
        }
    }

    public void relayout() {
        this.layoutTextViewer();
    }

    static class CompositeRulerCanvas
    extends Canvas {
        private List fCachedListeners = new ArrayList();
        private Listener fMenuDetectListener = new Listener(this){
            final /* synthetic */ CompositeRulerCanvas this$1;
            {
                this.this$1 = compositeRulerCanvas;
            }

            public void handleEvent(Event event) {
                Menu menu;
                if (event.type == 35 && (menu = this.this$1.getMenu()) != null) {
                    menu.setLocation(event.x, event.y);
                    menu.setVisible(true);
                }
            }
        };

        public CompositeRulerCanvas(Composite parent, int style) {
            super(parent, style);
            super.addDisposeListener(new DisposeListener(this){
                final /* synthetic */ CompositeRulerCanvas this$1;
                {
                    this.this$1 = compositeRulerCanvas;
                }

                public void widgetDisposed(DisposeEvent e) {
                    if (CompositeRulerCanvas.access$0(this.this$1) != null) {
                        CompositeRulerCanvas.access$0(this.this$1).clear();
                        CompositeRulerCanvas.access$1(this.this$1, null);
                    }
                }
            });
        }

        private void addListener(Class clazz, Control control, EventListener listener) {
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.swt.events.ControlListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz2.equals(clazz)) {
                control.addControlListener((ControlListener)listener);
                return;
            }
            Class<?> clazz3 = class$1;
            if (clazz3 == null) {
                try {
                    clazz3 = class$1 = Class.forName("org.eclipse.swt.events.FocusListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz3.equals(clazz)) {
                control.addFocusListener((FocusListener)listener);
                return;
            }
            Class<?> clazz4 = class$2;
            if (clazz4 == null) {
                try {
                    clazz4 = class$2 = Class.forName("org.eclipse.swt.events.HelpListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz4.equals(clazz)) {
                control.addHelpListener((HelpListener)listener);
                return;
            }
            Class<?> clazz5 = class$3;
            if (clazz5 == null) {
                try {
                    clazz5 = class$3 = Class.forName("org.eclipse.swt.events.KeyListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz5.equals(clazz)) {
                control.addKeyListener((KeyListener)listener);
                return;
            }
            Class<?> clazz6 = class$4;
            if (clazz6 == null) {
                try {
                    clazz6 = class$4 = Class.forName("org.eclipse.swt.events.MouseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz6.equals(clazz)) {
                control.addMouseListener((MouseListener)listener);
                return;
            }
            Class<?> clazz7 = class$5;
            if (clazz7 == null) {
                try {
                    clazz7 = class$5 = Class.forName("org.eclipse.swt.events.MouseMoveListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz7.equals(clazz)) {
                control.addMouseMoveListener((MouseMoveListener)listener);
                return;
            }
            Class<?> clazz8 = class$6;
            if (clazz8 == null) {
                try {
                    clazz8 = class$6 = Class.forName("org.eclipse.swt.events.MouseTrackListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz8.equals(clazz)) {
                control.addMouseTrackListener((MouseTrackListener)listener);
                return;
            }
            Class<?> clazz9 = class$7;
            if (clazz9 == null) {
                try {
                    clazz9 = class$7 = Class.forName("org.eclipse.swt.events.PaintListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz9.equals(clazz)) {
                control.addPaintListener((PaintListener)listener);
                return;
            }
            Class<?> clazz10 = class$8;
            if (clazz10 == null) {
                try {
                    clazz10 = class$8 = Class.forName("org.eclipse.swt.events.TraverseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz10.equals(clazz)) {
                control.addTraverseListener((TraverseListener)listener);
                return;
            }
            Class<?> clazz11 = class$9;
            if (clazz11 == null) {
                try {
                    clazz11 = class$9 = Class.forName("org.eclipse.swt.events.DisposeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz11.equals(clazz)) {
                control.addDisposeListener((DisposeListener)listener);
                return;
            }
        }

        private void removeListener(Class clazz, Control control, EventListener listener) {
            Class<?> clazz2 = class$0;
            if (clazz2 == null) {
                try {
                    clazz2 = class$0 = Class.forName("org.eclipse.swt.events.ControlListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz2.equals(clazz)) {
                control.removeControlListener((ControlListener)listener);
                return;
            }
            Class<?> clazz3 = class$1;
            if (clazz3 == null) {
                try {
                    clazz3 = class$1 = Class.forName("org.eclipse.swt.events.FocusListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz3.equals(clazz)) {
                control.removeFocusListener((FocusListener)listener);
                return;
            }
            Class<?> clazz4 = class$2;
            if (clazz4 == null) {
                try {
                    clazz4 = class$2 = Class.forName("org.eclipse.swt.events.HelpListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz4.equals(clazz)) {
                control.removeHelpListener((HelpListener)listener);
                return;
            }
            Class<?> clazz5 = class$3;
            if (clazz5 == null) {
                try {
                    clazz5 = class$3 = Class.forName("org.eclipse.swt.events.KeyListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz5.equals(clazz)) {
                control.removeKeyListener((KeyListener)listener);
                return;
            }
            Class<?> clazz6 = class$4;
            if (clazz6 == null) {
                try {
                    clazz6 = class$4 = Class.forName("org.eclipse.swt.events.MouseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz6.equals(clazz)) {
                control.removeMouseListener((MouseListener)listener);
                return;
            }
            Class<?> clazz7 = class$5;
            if (clazz7 == null) {
                try {
                    clazz7 = class$5 = Class.forName("org.eclipse.swt.events.MouseMoveListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz7.equals(clazz)) {
                control.removeMouseMoveListener((MouseMoveListener)listener);
                return;
            }
            Class<?> clazz8 = class$6;
            if (clazz8 == null) {
                try {
                    clazz8 = class$6 = Class.forName("org.eclipse.swt.events.MouseTrackListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz8.equals(clazz)) {
                control.removeMouseTrackListener((MouseTrackListener)listener);
                return;
            }
            Class<?> clazz9 = class$7;
            if (clazz9 == null) {
                try {
                    clazz9 = class$7 = Class.forName("org.eclipse.swt.events.PaintListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz9.equals(clazz)) {
                control.removePaintListener((PaintListener)listener);
                return;
            }
            Class<?> clazz10 = class$8;
            if (clazz10 == null) {
                try {
                    clazz10 = class$8 = Class.forName("org.eclipse.swt.events.TraverseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz10.equals(clazz)) {
                control.removeTraverseListener((TraverseListener)listener);
                return;
            }
            Class<?> clazz11 = class$9;
            if (clazz11 == null) {
                try {
                    clazz11 = class$9 = Class.forName("org.eclipse.swt.events.DisposeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if (clazz11.equals(clazz)) {
                control.removeDisposeListener((DisposeListener)listener);
                return;
            }
        }

        private void addListener(Class clazz, EventListener listener) {
            Control[] children = this.getChildren();
            int i = 0;
            while (i < children.length) {
                if (children[i] != null && !children[i].isDisposed()) {
                    this.addListener(clazz, children[i], listener);
                }
                ++i;
            }
            ListenerInfo info = new ListenerInfo();
            info.fClass = clazz;
            info.fListener = listener;
            this.fCachedListeners.add(info);
        }

        private void removeListener(Class clazz, EventListener listener) {
            Control[] children = this.getChildren();
            int length = this.fCachedListeners.size();
            int i = 0;
            while (i < length) {
                ListenerInfo info = (ListenerInfo)this.fCachedListeners.get(i);
                if (listener == info.fListener && clazz.equals(info.fClass)) {
                    this.fCachedListeners.remove(i);
                    break;
                }
                ++i;
            }
            i = 0;
            while (i < children.length) {
                if (children[i] != null && !children[i].isDisposed()) {
                    this.removeListener(clazz, children[i], listener);
                }
                ++i;
            }
        }

        public void childAdded(Control child) {
            if (child != null && !child.isDisposed()) {
                int length = this.fCachedListeners.size();
                int i = 0;
                while (i < length) {
                    ListenerInfo info = (ListenerInfo)this.fCachedListeners.get(i);
                    this.addListener(info.fClass, child, info.fListener);
                    ++i;
                }
                child.addListener(35, this.fMenuDetectListener);
            }
        }

        public void childRemoved(Control child) {
            if (child != null && !child.isDisposed()) {
                int length = this.fCachedListeners.size();
                int i = 0;
                while (i < length) {
                    ListenerInfo info = (ListenerInfo)this.fCachedListeners.get(i);
                    this.removeListener(info.fClass, child, info.fListener);
                    ++i;
                }
                child.removeListener(35, this.fMenuDetectListener);
            }
        }

        public void removeControlListener(ControlListener listener) {
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.events.ControlListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeControlListener(listener);
        }

        public void removeFocusListener(FocusListener listener) {
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.swt.events.FocusListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeFocusListener(listener);
        }

        public void removeHelpListener(HelpListener listener) {
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.swt.events.HelpListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeHelpListener(listener);
        }

        public void removeKeyListener(KeyListener listener) {
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.swt.events.KeyListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeKeyListener(listener);
        }

        public void removeMouseListener(MouseListener listener) {
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("org.eclipse.swt.events.MouseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeMouseListener(listener);
        }

        public void removeMouseMoveListener(MouseMoveListener listener) {
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.swt.events.MouseMoveListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeMouseMoveListener(listener);
        }

        public void removeMouseTrackListener(MouseTrackListener listener) {
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.swt.events.MouseTrackListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeMouseTrackListener(listener);
        }

        public void removePaintListener(PaintListener listener) {
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("org.eclipse.swt.events.PaintListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removePaintListener(listener);
        }

        public void removeTraverseListener(TraverseListener listener) {
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.swt.events.TraverseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeTraverseListener(listener);
        }

        public void removeDisposeListener(DisposeListener listener) {
            Class<?> clazz = class$9;
            if (clazz == null) {
                try {
                    clazz = class$9 = Class.forName("org.eclipse.swt.events.DisposeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.removeListener(clazz, (EventListener)listener);
            super.removeDisposeListener(listener);
        }

        public void addControlListener(ControlListener listener) {
            super.addControlListener(listener);
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.swt.events.ControlListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addFocusListener(FocusListener listener) {
            super.addFocusListener(listener);
            Class<?> clazz = class$1;
            if (clazz == null) {
                try {
                    clazz = class$1 = Class.forName("org.eclipse.swt.events.FocusListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addHelpListener(HelpListener listener) {
            super.addHelpListener(listener);
            Class<?> clazz = class$2;
            if (clazz == null) {
                try {
                    clazz = class$2 = Class.forName("org.eclipse.swt.events.HelpListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addKeyListener(KeyListener listener) {
            super.addKeyListener(listener);
            Class<?> clazz = class$3;
            if (clazz == null) {
                try {
                    clazz = class$3 = Class.forName("org.eclipse.swt.events.KeyListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addMouseListener(MouseListener listener) {
            super.addMouseListener(listener);
            Class<?> clazz = class$4;
            if (clazz == null) {
                try {
                    clazz = class$4 = Class.forName("org.eclipse.swt.events.MouseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addMouseMoveListener(MouseMoveListener listener) {
            super.addMouseMoveListener(listener);
            Class<?> clazz = class$5;
            if (clazz == null) {
                try {
                    clazz = class$5 = Class.forName("org.eclipse.swt.events.MouseMoveListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addMouseTrackListener(MouseTrackListener listener) {
            super.addMouseTrackListener(listener);
            Class<?> clazz = class$6;
            if (clazz == null) {
                try {
                    clazz = class$6 = Class.forName("org.eclipse.swt.events.MouseTrackListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addPaintListener(PaintListener listener) {
            super.addPaintListener(listener);
            Class<?> clazz = class$7;
            if (clazz == null) {
                try {
                    clazz = class$7 = Class.forName("org.eclipse.swt.events.PaintListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addTraverseListener(TraverseListener listener) {
            super.addTraverseListener(listener);
            Class<?> clazz = class$8;
            if (clazz == null) {
                try {
                    clazz = class$8 = Class.forName("org.eclipse.swt.events.TraverseListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        public void addDisposeListener(DisposeListener listener) {
            super.addDisposeListener(listener);
            Class<?> clazz = class$9;
            if (clazz == null) {
                try {
                    clazz = class$9 = Class.forName("org.eclipse.swt.events.DisposeListener");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            this.addListener(clazz, (EventListener)listener);
        }

        static /* synthetic */ List access$0(CompositeRulerCanvas compositeRulerCanvas) {
            return compositeRulerCanvas.fCachedListeners;
        }

        static /* synthetic */ void access$1(CompositeRulerCanvas compositeRulerCanvas, List list) {
            compositeRulerCanvas.fCachedListeners = list;
        }

        static class ListenerInfo {
            Class fClass;
            EventListener fListener;

            ListenerInfo() {
            }
        }
    }

    class RulerLayout
    extends Layout {
        protected RulerLayout() {
        }

        protected Point computeSize(Composite composite, int wHint, int hHint, boolean flushCache) {
            Control[] children = composite.getChildren();
            Point size = new Point(0, 0);
            int i = 0;
            while (i < children.length) {
                Point s = children[i].computeSize(-1, -1, flushCache);
                size.x += s.x;
                size.y = Math.max(size.y, s.y);
                ++i;
            }
            size.x += Math.max(0, children.length - 1) * CompositeRuler.this.fGap;
            return size;
        }

        protected void layout(Composite composite, boolean flushCache) {
            Rectangle clArea = composite.getClientArea();
            int rulerHeight = clArea.height;
            int x = 0;
            Iterator e = CompositeRuler.this.fDecorators.iterator();
            while (e.hasNext()) {
                IVerticalRulerColumn column = (IVerticalRulerColumn)e.next();
                int columnWidth = column.getWidth();
                column.getControl().setBounds(x, 0, columnWidth, rulerHeight);
                x += columnWidth + CompositeRuler.this.fGap;
            }
        }
    }
}

