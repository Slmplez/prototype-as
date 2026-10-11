/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.BadLocationException
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.Position
 *  org.eclipse.jface.text.source.Annotation
 *  org.eclipse.jface.text.source.IAnnotationModel
 */
package org.eclipse.jface.text.source;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.eclipse.jface.text.BadLocationException;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.Position;
import org.eclipse.jface.text.source.Annotation;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.ISourceViewerExtension2;
import org.eclipse.jface.text.source.JFaceTextMessages;
import org.eclipse.jface.text.source.projection.AnnotationBag;

public class DefaultAnnotationHover
implements IAnnotationHover {
    private boolean fShowLineNumber;

    public DefaultAnnotationHover() {
        this(false);
    }

    public DefaultAnnotationHover(boolean showLineNumber) {
        this.fShowLineNumber = showLineNumber;
    }

    public String getHoverInfo(ISourceViewer sourceViewer, int lineNumber) {
        List javaAnnotations = this.getAnnotationsForLine(sourceViewer, lineNumber);
        if (javaAnnotations != null) {
            if (javaAnnotations.size() == 1) {
                Annotation annotation = (Annotation)javaAnnotations.get(0);
                String message = annotation.getText();
                if (message != null && message.trim().length() > 0) {
                    return this.formatSingleMessage(message);
                }
            } else {
                ArrayList<String> messages = new ArrayList<String>();
                Iterator e = javaAnnotations.iterator();
                while (e.hasNext()) {
                    Annotation annotation = (Annotation)e.next();
                    String message = annotation.getText();
                    if (message == null || message.trim().length() <= 0) continue;
                    messages.add(message.trim());
                }
                if (messages.size() == 1) {
                    return this.formatSingleMessage((String)messages.get(0));
                }
                if (messages.size() > 1) {
                    return this.formatMultipleMessages(messages);
                }
            }
        }
        if (this.fShowLineNumber && lineNumber > -1) {
            return JFaceTextMessages.getFormattedString("DefaultAnnotationHover.lineNumber", new String[]{Integer.toString(lineNumber + 1)});
        }
        return null;
    }

    protected boolean isIncluded(Annotation annotation) {
        return true;
    }

    protected String formatSingleMessage(String message) {
        return message;
    }

    protected String formatMultipleMessages(List messages) {
        StringBuffer buffer = new StringBuffer();
        buffer.append(JFaceTextMessages.getString("DefaultAnnotationHover.multipleMarkers"));
        Iterator e = messages.iterator();
        while (e.hasNext()) {
            buffer.append('\n');
            String listItemText = (String)e.next();
            buffer.append(JFaceTextMessages.getFormattedString("DefaultAnnotationHover.listItem", new String[]{listItemText}));
        }
        return buffer.toString();
    }

    private boolean isRulerLine(Position position, IDocument document, int line) {
        if (position.getOffset() > -1 && position.getLength() > -1) {
            try {
                return line == document.getLineOfOffset(position.getOffset());
            }
            catch (BadLocationException badLocationException) {}
        }
        return false;
    }

    private IAnnotationModel getAnnotationModel(ISourceViewer viewer) {
        if (viewer instanceof ISourceViewerExtension2) {
            ISourceViewerExtension2 extension = (ISourceViewerExtension2)((Object)viewer);
            return extension.getVisualAnnotationModel();
        }
        return viewer.getAnnotationModel();
    }

    private boolean isDuplicateAnnotation(Map messagesAtPosition, Position position, String message) {
        if (messagesAtPosition.containsKey(position)) {
            Object value = messagesAtPosition.get(position);
            if (message.equals(value)) {
                return true;
            }
            if (value instanceof List) {
                List messages = (List)value;
                if (messages.contains(message)) {
                    return true;
                }
                messages.add(message);
            } else {
                ArrayList<Object> messages = new ArrayList<Object>();
                messages.add(value);
                messages.add(message);
                messagesAtPosition.put(position, messages);
            }
        } else {
            messagesAtPosition.put(position, message);
        }
        return false;
    }

    private boolean includeAnnotation(Annotation annotation, Position position, HashMap messagesAtPosition) {
        if (!this.isIncluded(annotation)) {
            return false;
        }
        String text = annotation.getText();
        return text != null && !this.isDuplicateAnnotation(messagesAtPosition, position, text);
    }

    private List getAnnotationsForLine(ISourceViewer viewer, int line) {
        IAnnotationModel model = this.getAnnotationModel(viewer);
        if (model == null) {
            return null;
        }
        IDocument document = viewer.getDocument();
        ArrayList<Annotation> javaAnnotations = new ArrayList<Annotation>();
        HashMap messagesAtPosition = new HashMap();
        Iterator iterator = model.getAnnotationIterator();
        while (iterator.hasNext()) {
            Annotation annotation = (Annotation)iterator.next();
            Position position = model.getPosition(annotation);
            if (position == null || !this.isRulerLine(position, document, line)) continue;
            if (annotation instanceof AnnotationBag) {
                AnnotationBag bag = (AnnotationBag)annotation;
                Iterator e = bag.iterator();
                while (e.hasNext()) {
                    annotation = (Annotation)e.next();
                    position = model.getPosition(annotation);
                    if (position == null || !this.includeAnnotation(annotation, position, messagesAtPosition)) continue;
                    javaAnnotations.add(annotation);
                }
                continue;
            }
            if (!this.includeAnnotation(annotation, position, messagesAtPosition)) continue;
            javaAnnotations.add(annotation);
        }
        return javaAnnotations;
    }
}

