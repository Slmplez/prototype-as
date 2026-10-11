/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.jface.text.IDocument
 *  org.eclipse.jface.text.source.IAnnotationModel
 *  org.eclipse.jface.text.source.IAnnotationModelExtension
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.widgets.Shell
 */
package org.eclipse.jface.text.source;

import java.util.LinkedList;
import java.util.List;
import org.eclipse.jface.text.DefaultInformationControl;
import org.eclipse.jface.text.IDocument;
import org.eclipse.jface.text.IInformationControl;
import org.eclipse.jface.text.IInformationControlCreator;
import org.eclipse.jface.text.information.IInformationProviderExtension2;
import org.eclipse.jface.text.source.IAnnotationHover;
import org.eclipse.jface.text.source.IAnnotationHoverExtension;
import org.eclipse.jface.text.source.IAnnotationModel;
import org.eclipse.jface.text.source.IAnnotationModelExtension;
import org.eclipse.jface.text.source.ILineDiffInfo;
import org.eclipse.jface.text.source.ILineDiffer;
import org.eclipse.jface.text.source.ILineDifferExtension2;
import org.eclipse.jface.text.source.ILineRange;
import org.eclipse.jface.text.source.ISourceViewer;
import org.eclipse.jface.text.source.LineRange;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.widgets.Shell;

public class LineChangeHover
implements IAnnotationHover,
IAnnotationHoverExtension,
IInformationProviderExtension2 {
    public String getHoverInfo(ISourceViewer sourceViewer, int lineNumber) {
        return null;
    }

    protected String formatSource(String content) {
        if (content != null) {
            StringBuffer sb = new StringBuffer(content);
            String tabReplacement = this.getTabReplacement();
            int pos = 0;
            while (pos < sb.length()) {
                if (sb.charAt(pos) == '\t') {
                    sb.replace(pos, pos + 1, tabReplacement);
                }
                ++pos;
            }
            return sb.toString();
        }
        return content;
    }

    protected String getTabReplacement() {
        return "\t";
    }

    private String computeContent(ISourceViewer viewer, int first, int last, int maxLines) {
        ILineDiffer differ = this.getDiffer(viewer);
        if (differ == null) {
            return null;
        }
        LinkedList<ILineDiffInfo> lines = new LinkedList<ILineDiffInfo>();
        int l = first;
        while (l <= last) {
            ILineDiffInfo info = differ.getLineInfo(l);
            if (info != null) {
                lines.add(info);
            }
            ++l;
        }
        return this.decorateText(lines, maxLines);
    }

    /*
     * Unable to fully structure code
     */
    protected String decorateText(List diffInfos, int maxLines) {
        text = "";
        added = 0;
        it = diffInfos.iterator();
        while (it.hasNext()) {
            info = (ILineDiffInfo)it.next();
            original = info.getOriginalText();
            type = info.getChangeType();
            i = 0;
            if (type == 1) {
                ++added;
            } else if (type == 2) {
                text = String.valueOf(text) + "> " + (original.length > 0 ? original[i++] : "");
                --maxLines;
            } else if (type == 0) {
                ++maxLines;
            }
            if (maxLines != 0) ** GOTO lbl25
            return this.trimTrailing(text);
lbl-1000:
            // 1 sources

            {
                text = String.valueOf(text) + "- " + original[i];
                --added;
                if (--maxLines == 0) {
                    return this.trimTrailing(text);
                }
                ++i;
lbl25:
                // 2 sources

                ** while (i < original.length)
            }
lbl26:
            // 1 sources

        }
        if ((text = text.trim()).length() == 0 && added-- > 0 && maxLines-- > 0) {
            text = String.valueOf(text) + "+ ";
        }
        while (added-- > 0 && maxLines-- > 0) {
            text = String.valueOf(text) + "\n+ ";
        }
        return text;
    }

    private String trimTrailing(String text) {
        int pos = text.length() - 1;
        while (pos >= 0 && Character.isWhitespace(text.charAt(pos))) {
            --pos;
        }
        return text.substring(0, pos + 1);
    }

    private ILineDiffer getDiffer(ISourceViewer viewer) {
        IAnnotationModel diffModel;
        IAnnotationModel model = viewer.getAnnotationModel();
        if (model == null) {
            return null;
        }
        if (model instanceof IAnnotationModelExtension && (diffModel = ((IAnnotationModelExtension)model).getAnnotationModel((Object)"diff")) != null) {
            model = diffModel;
        }
        if (model instanceof ILineDiffer) {
            if (model instanceof ILineDifferExtension2 && ((ILineDifferExtension2)model).isSuspended()) {
                return null;
            }
            return (ILineDiffer)model;
        }
        return null;
    }

    protected Point computeLineRange(ISourceViewer viewer, int line, int min, int max) {
        ILineDiffer differ = this.getDiffer(viewer);
        if (differ == null) {
            return new Point(-1, -1);
        }
        int l = line;
        ILineDiffInfo info = differ.getLineInfo(l);
        while (l >= min && info != null && (info.getChangeType() == 2 || info.getChangeType() == 1)) {
            info = differ.getLineInfo(--l);
        }
        int first = Math.min(l + 1, line);
        l = line;
        info = differ.getLineInfo(l);
        while (l <= max && info != null && (info.getChangeType() == 2 || info.getChangeType() == 1)) {
            info = differ.getLineInfo(++l);
        }
        int last = Math.max(l - 1, line);
        return new Point(first, last);
    }

    public Object getHoverInfo(ISourceViewer sourceViewer, ILineRange lineRange, int visibleLines) {
        int first = this.adaptFirstLine(sourceViewer, lineRange.getStartLine());
        int last = this.adaptLastLine(sourceViewer, lineRange.getStartLine() + lineRange.getNumberOfLines() - 1);
        String content = this.computeContent(sourceViewer, first, last, visibleLines);
        return this.formatSource(content);
    }

    private int adaptFirstLine(ISourceViewer viewer, int startLine) {
        int l;
        ILineDiffInfo info;
        ILineDiffer differ = this.getDiffer(viewer);
        if (differ != null && startLine > 0 && (info = differ.getLineInfo(l = startLine - 1)) != null && info.getChangeType() == 0 && info.getRemovedLinesBelow() > 0) {
            return l;
        }
        return startLine;
    }

    private int adaptLastLine(ISourceViewer viewer, int lastLine) {
        ILineDiffInfo info;
        ILineDiffer differ = this.getDiffer(viewer);
        if (differ != null && lastLine > 0 && (info = differ.getLineInfo(lastLine)) != null && info.getChangeType() == 0) {
            return lastLine - 1;
        }
        return lastLine;
    }

    public ILineRange getHoverLineRange(ISourceViewer viewer, int lineNumber) {
        IDocument document = viewer.getDocument();
        if (document != null) {
            Point range = this.computeLineRange(viewer, lineNumber, 0, Math.max(0, document.getNumberOfLines() - 1));
            if (range.x != -1 && range.y != -1) {
                return new LineRange(range.x, range.y - range.x + 1);
            }
        }
        return null;
    }

    public boolean canHandleMouseCursor() {
        return false;
    }

    public IInformationControlCreator getHoverControlCreator() {
        return null;
    }

    public IInformationControlCreator getInformationPresenterControlCreator() {
        return new IInformationControlCreator(){

            public IInformationControl createInformationControl(Shell parent) {
                return new DefaultInformationControl(parent, null, null);
            }
        };
    }
}

