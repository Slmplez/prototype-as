/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IVerticalRulerInfo
 *  org.eclipse.jface.text.source.IVerticalRulerInfoExtension
 *  org.eclipse.jface.text.source.IVerticalRulerListener
 *  org.eclipse.jface.text.source.VerticalRulerEvent
 *  org.eclipse.swt.widgets.Menu
 */
package org.eclipse.ui.texteditor;

import java.util.ResourceBundle;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IVerticalRulerInfo;
import org.eclipse.jface.text.source.IVerticalRulerInfoExtension;
import org.eclipse.jface.text.source.IVerticalRulerListener;
import org.eclipse.jface.text.source.VerticalRulerEvent;
import org.eclipse.swt.widgets.Menu;
import org.eclipse.ui.texteditor.IDocumentProvider;
import org.eclipse.ui.texteditor.ITextEditor;
import org.eclipse.ui.texteditor.TextEditorAction;

public class SelectAnnotationRulerAction
extends TextEditorAction
implements IVerticalRulerListener {
    static /* synthetic */ Class class$0;

    public SelectAnnotationRulerAction(ResourceBundle bundle, String prefix, ITextEditor editor) {
        super(bundle, prefix, editor);
    }

    public void setEditor(ITextEditor editor) {
        IVerticalRulerInfo service;
        if (this.getTextEditor() != null) {
            ITextEditor iTextEditor = this.getTextEditor();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (IVerticalRulerInfo)iTextEditor.getAdapter(clazz)) instanceof IVerticalRulerInfoExtension) {
                ((IVerticalRulerInfoExtension)service).removeVerticalRulerListener((IVerticalRulerListener)this);
            }
        }
        super.setEditor(editor);
        if (this.getTextEditor() != null) {
            ITextEditor iTextEditor = this.getTextEditor();
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.jface.text.source.IVerticalRulerInfo");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((service = (IVerticalRulerInfo)iTextEditor.getAdapter(clazz)) instanceof IVerticalRulerInfoExtension) {
                ((IVerticalRulerInfoExtension)service).addVerticalRulerListener((IVerticalRulerListener)this);
            }
        }
    }

    protected IAnnotationModel getAnnotationModel() {
        IDocumentProvider provider = this.getTextEditor().getDocumentProvider();
        return provider.getAnnotationModel(this.getTextEditor().getEditorInput());
    }

    public void annotationSelected(VerticalRulerEvent event) {
    }

    public void annotationDefaultSelected(VerticalRulerEvent event) {
        Annotation a = event.getSelectedAnnotation();
        IAnnotationModel model = this.getAnnotationModel();
        Position position = model.getPosition(a);
        if (position == null) {
            return;
        }
        this.getTextEditor().selectAndReveal(position.offset, position.length);
    }

    public void annotationContextMenuAboutToShow(VerticalRulerEvent event, Menu menu) {
    }
}

