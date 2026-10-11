/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.viewers.ITableFontProvider
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.LabelProvider
 *  org.eclipse.swt.graphics.Font
 *  org.eclipse.swt.graphics.Image
 */
package org.eclipse.ui.internal.views.log;

import com.ibm.icu.text.DateFormat;
import java.util.ArrayList;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.viewers.ITableFontProvider;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.LabelProvider;
import org.eclipse.swt.graphics.Font;
import org.eclipse.swt.graphics.Image;
import org.eclipse.ui.internal.views.log.Group;
import org.eclipse.ui.internal.views.log.LogEntry;
import org.eclipse.ui.internal.views.log.LogSession;
import org.eclipse.ui.internal.views.log.LogView;
import org.eclipse.ui.internal.views.log.Messages;
import org.eclipse.ui.internal.views.log.SharedImages;

public class LogViewLabelProvider
extends LabelProvider
implements ITableLabelProvider,
ITableFontProvider {
    private static int MAX_LABEL_LENGTH = 200;
    private Image infoImage;
    private Image okImage;
    private Image errorImage;
    private Image warningImage;
    private Image errorWithStackImage;
    private Image hierarchicalImage;
    ArrayList consumers = new ArrayList();
    private DateFormat dateFormat = DateFormat.getDateTimeInstance((int)3, (int)3);
    private LogView logView;

    public LogViewLabelProvider(LogView logView) {
        this.errorImage = SharedImages.getImage("icons/obj16/error_st_obj.gif");
        this.warningImage = SharedImages.getImage("icons/obj16/warning_st_obj.gif");
        this.infoImage = SharedImages.getImage("icons/obj16/info_st_obj.gif");
        this.okImage = SharedImages.getImage("icons/obj16/ok_st_obj.gif");
        this.errorWithStackImage = SharedImages.getImage("icons/obj16/error_stack.gif");
        this.hierarchicalImage = SharedImages.getImage("icons/obj16/hierarchical.gif");
        this.logView = logView;
    }

    public void dispose() {
        if (this.consumers.size() == 0) {
            super.dispose();
        }
    }

    public Image getColumnImage(Object element, int columnIndex) {
        if (element instanceof Group) {
            return columnIndex == 0 ? this.hierarchicalImage : null;
        }
        LogEntry entry = (LogEntry)((Object)element);
        if (columnIndex == 0) {
            switch (entry.getSeverity()) {
                case 1: {
                    return this.infoImage;
                }
                case 0: {
                    return this.okImage;
                }
                case 2: {
                    return this.warningImage;
                }
            }
            return entry.getStack() == null ? this.errorImage : this.errorWithStackImage;
        }
        return null;
    }

    public String getColumnText(Object element, int columnIndex) {
        if (element instanceof LogSession && columnIndex == 2) {
            LogSession session = (LogSession)((Object)element);
            if (session.getDate() == null) {
                return "";
            }
            return this.dateFormat.format(session.getDate());
        }
        if (element instanceof Group && columnIndex == 0) {
            return element.toString();
        }
        if (element instanceof LogEntry) {
            LogEntry entry = (LogEntry)((Object)element);
            switch (columnIndex) {
                case 0: {
                    if (entry.getMessage() != null) {
                        String message = entry.getMessage();
                        if (message.length() > MAX_LABEL_LENGTH) {
                            String warning = Messages.LogViewLabelProvider_truncatedMessage;
                            StringBuffer sb = new StringBuffer(message.substring(0, MAX_LABEL_LENGTH - warning.length()));
                            sb.append(warning);
                            return sb.toString();
                        }
                        return entry.getMessage();
                    }
                }
                case 1: {
                    if (entry.getPluginId() != null) {
                        return entry.getPluginId();
                    }
                }
                case 2: {
                    return this.dateFormat.format(entry.getDate());
                }
            }
        }
        return "";
    }

    public void connect(Object consumer) {
        if (!this.consumers.contains(consumer)) {
            this.consumers.add(consumer);
        }
    }

    public void disconnect(Object consumer) {
        this.consumers.remove(consumer);
        if (this.consumers.size() == 0) {
            this.dispose();
        }
    }

    public Font getFont(Object element, int columnIndex) {
        if (element instanceof LogSession && this.logView.isCurrentLogSession((LogSession)((Object)element))) {
            return JFaceResources.getFontRegistry().getBold("org.eclipse.jface.defaultfont");
        }
        return null;
    }
}

