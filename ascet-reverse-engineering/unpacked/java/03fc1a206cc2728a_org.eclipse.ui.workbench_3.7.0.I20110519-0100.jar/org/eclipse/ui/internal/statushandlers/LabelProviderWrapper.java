/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  com.ibm.icu.text.DateFormat
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.resource.ImageDescriptor
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.jface.resource.LocalResourceManager
 *  org.eclipse.jface.resource.ResourceManager
 *  org.eclipse.jface.viewers.ILabelDecorator
 *  org.eclipse.jface.viewers.ILabelProviderListener
 *  org.eclipse.jface.viewers.ITableLabelProvider
 *  org.eclipse.jface.viewers.Viewer
 *  org.eclipse.jface.viewers.ViewerComparator
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.graphics.Image
 *  org.eclipse.swt.widgets.Display
 */
package org.eclipse.ui.internal.statushandlers;

import com.ibm.icu.text.DateFormat;
import java.net.URL;
import java.util.Collection;
import java.util.Date;
import java.util.Map;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.resource.ImageDescriptor;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.jface.resource.LocalResourceManager;
import org.eclipse.jface.resource.ResourceManager;
import org.eclipse.jface.viewers.ILabelDecorator;
import org.eclipse.jface.viewers.ILabelProviderListener;
import org.eclipse.jface.viewers.ITableLabelProvider;
import org.eclipse.jface.viewers.Viewer;
import org.eclipse.jface.viewers.ViewerComparator;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.graphics.Image;
import org.eclipse.swt.widgets.Display;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.progress.ProgressManager;
import org.eclipse.ui.internal.progress.ProgressMessages;
import org.eclipse.ui.internal.statushandlers.IStatusDialogConstants;
import org.eclipse.ui.progress.IProgressConstants;
import org.eclipse.ui.statushandlers.IStatusAdapterConstants;
import org.eclipse.ui.statushandlers.StatusAdapter;

public class LabelProviderWrapper
extends ViewerComparator
implements ITableLabelProvider {
    private ITableLabelProvider labelProvider;
    private ILabelDecorator messageDecorator;
    private Map dialogState;
    static /* synthetic */ Class class$0;

    public LabelProviderWrapper(Map dialogState) {
        this.dialogState = dialogState;
    }

    public Image getColumnImage(Object element, int columnIndex) {
        return this.labelProvider.getColumnImage(element, columnIndex);
    }

    public String getColumnText(Object element, int columnIndex) {
        return this.getLabelProvider().getColumnText(element, columnIndex);
    }

    public void addListener(ILabelProviderListener listener) {
        this.getLabelProvider().addListener(listener);
    }

    public void dispose() {
        boolean modalitySwitch = (Boolean)this.dialogState.get(IStatusDialogConstants.MODALITY_SWITCH);
        if (!modalitySwitch) {
            this.getLabelProvider().dispose();
        }
    }

    public boolean isLabelProperty(Object element, String property) {
        return this.getLabelProvider().isLabelProperty(element, property);
    }

    public void removeListener(ILabelProviderListener listener) {
        this.getLabelProvider().removeListener(listener);
    }

    public Image getImage(StatusAdapter statusAdapter) {
        if (statusAdapter != null) {
            int severity = statusAdapter.getStatus().getSeverity();
            switch (severity) {
                case 0: 
                case 1: 
                case 8: {
                    return this.getSWTImage(2);
                }
                case 2: {
                    return this.getSWTImage(8);
                }
            }
            return this.getSWTImage(1);
        }
        return this.getSWTImage(1);
    }

    public Image getSWTImage(int imageID) {
        return Display.getCurrent().getSystemImage(imageID);
    }

    public String getMainMessage(StatusAdapter statusAdapter) {
        if (!this.isMulti()) {
            Job job;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((job = (Job)statusAdapter.getAdapter(clazz)) != null) {
                return NLS.bind((String)WorkbenchMessages.WorkbenchStatusDialog_ProblemOccurredInJob, (Object)job.getName());
            }
            return this.getPrimaryMessage(statusAdapter);
        }
        if (this.isMulti()) {
            Job job;
            Class<?> clazz = class$0;
            if (clazz == null) {
                try {
                    clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                }
                catch (ClassNotFoundException classNotFoundException) {
                    throw new NoClassDefFoundError(classNotFoundException.getMessage());
                }
            }
            if ((job = (Job)statusAdapter.getAdapter(clazz)) != null) {
                return this.getPrimaryMessage(statusAdapter);
            }
            return this.getSecondaryMessage(statusAdapter);
        }
        return WorkbenchMessages.WorkbenchStatusDialog_ProblemOccurred;
    }

    public String getPrimaryMessage(StatusAdapter statusAdapter) {
        String header;
        Object property = statusAdapter.getProperty(IStatusAdapterConstants.TITLE_PROPERTY);
        if (property instanceof String && (header = (String)property).trim().length() > 0) {
            return this.decorate(header, statusAdapter);
        }
        IStatus status = statusAdapter.getStatus();
        if (status.getMessage() != null && status.getMessage().trim().length() > 0) {
            return this.decorate(status.getMessage(), statusAdapter);
        }
        if (status.getChildren().length > 0) {
            return WorkbenchMessages.WorkbenchStatusDialog_StatusWithChildren;
        }
        Throwable t = status.getException();
        if (t != null) {
            if (t.getMessage() != null && t.getMessage().trim().length() > 0) {
                return this.decorate(t.getMessage(), statusAdapter);
            }
            return t.getClass().getName();
        }
        return WorkbenchMessages.WorkbenchStatusDialog_ProblemOccurred;
    }

    public String getSecondaryMessage(StatusAdapter statusAdapter) {
        String decoratedMessage;
        String primary = this.getPrimaryMessage(statusAdapter);
        IStatus status = statusAdapter.getStatus();
        String message = status.getMessage();
        String string = decoratedMessage = message == null ? null : this.decorate(message, statusAdapter);
        if (message != null && message.trim().length() > 0 && !primary.equals(decoratedMessage)) {
            return decoratedMessage;
        }
        if (status.getChildren().length > 0 && !primary.equals(decoratedMessage)) {
            return WorkbenchMessages.WorkbenchStatusDialog_StatusWithChildren;
        }
        Throwable t = status.getException();
        if (t != null) {
            String throwableName;
            if (t.getMessage() != null) {
                String decoratedThrowable = this.decorate(t.getMessage(), statusAdapter);
                if (t.getMessage().trim().length() > 0 && !primary.equals(decoratedThrowable)) {
                    return decoratedThrowable;
                }
            }
            if (!primary.equals(throwableName = t.getClass().getName())) {
                return throwableName;
            }
        }
        return WorkbenchMessages.WorkbenchStatusDialog_SeeDetails;
    }

    private String decorate(String string, StatusAdapter adapter) {
        this.messageDecorator = (ILabelDecorator)this.dialogState.get(IStatusDialogConstants.DECORATOR);
        if (this.messageDecorator != null) {
            string = this.messageDecorator.decorateText(string, (Object)adapter);
        }
        return string;
    }

    private int compare(StatusAdapter s1, StatusAdapter s2) {
        Long timestamp1 = (Long)s1.getProperty(IStatusAdapterConstants.TIMESTAMP_PROPERTY);
        Long timestamp2 = (Long)s2.getProperty(IStatusAdapterConstants.TIMESTAMP_PROPERTY);
        if (timestamp1 == null || timestamp2 == null || timestamp1.equals(timestamp2)) {
            String text1 = this.getColumnText(s1, 0);
            String text2 = this.getColumnText(s2, 0);
            return text1.compareTo(text2);
        }
        if (timestamp1 < timestamp2) {
            return -1;
        }
        if (timestamp1 > timestamp2) {
            return 1;
        }
        return 0;
    }

    public int compare(Viewer testViewer, Object o1, Object o2) {
        if (o1 instanceof StatusAdapter && o2 instanceof StatusAdapter) {
            return this.compare((StatusAdapter)o1, (StatusAdapter)o2);
        }
        if (o1.hashCode() < o2.hashCode()) {
            return -1;
        }
        if (o2.hashCode() > o2.hashCode()) {
            return 1;
        }
        return 0;
    }

    private boolean isMulti() {
        return ((Collection)this.dialogState.get(IStatusDialogConstants.STATUS_ADAPTERS)).size() > 1;
    }

    public ITableLabelProvider getLabelProvider() {
        ITableLabelProvider temp = (ITableLabelProvider)this.dialogState.get(IStatusDialogConstants.CUSTOM_LABEL_PROVIDER);
        if (temp != null) {
            this.labelProvider = temp;
        }
        if (this.labelProvider == null) {
            this.labelProvider = new DefaultLabelProvider();
        }
        return this.labelProvider;
    }

    private class DefaultLabelProvider
    implements ITableLabelProvider {
        ResourceManager manager = new LocalResourceManager(JFaceResources.getResources());

        private DefaultLabelProvider() {
        }

        public void addListener(ILabelProviderListener listener) {
        }

        public void dispose() {
            this.manager.dispose();
        }

        public Image getColumnImage(Object element, int columnIndex) {
            Image result = null;
            if (element != null) {
                Job job;
                StatusAdapter statusAdapter = (StatusAdapter)element;
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                if ((job = (Job)statusAdapter.getAdapter(clazz)) != null) {
                    result = this.getIcon(job);
                }
            }
            if (result != null && result.isDisposed()) {
                result = null;
            }
            return result;
        }

        public String getColumnText(Object element, int columnIndex) {
            Job job;
            StatusAdapter statusAdapter = (StatusAdapter)element;
            String text = WorkbenchMessages.WorkbenchStatusDialog_ProblemOccurred;
            if (!LabelProviderWrapper.this.isMulti()) {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                text = (job = (Job)statusAdapter.getAdapter(clazz)) != null ? LabelProviderWrapper.this.getPrimaryMessage(statusAdapter) : LabelProviderWrapper.this.getSecondaryMessage(statusAdapter);
            } else {
                Class<?> clazz = class$0;
                if (clazz == null) {
                    try {
                        clazz = class$0 = Class.forName("org.eclipse.core.runtime.jobs.Job");
                    }
                    catch (ClassNotFoundException classNotFoundException) {
                        throw new NoClassDefFoundError(classNotFoundException.getMessage());
                    }
                }
                text = (job = (Job)statusAdapter.getAdapter(clazz)) != null ? job.getName() : LabelProviderWrapper.this.getPrimaryMessage(statusAdapter);
            }
            Long timestamp = (Long)statusAdapter.getProperty(IStatusAdapterConstants.TIMESTAMP_PROPERTY);
            if (timestamp != null && LabelProviderWrapper.this.isMulti()) {
                String date = DateFormat.getDateTimeInstance((int)1, (int)1).format(new Date(timestamp));
                return NLS.bind((String)ProgressMessages.JobInfo_Error, (Object[])new Object[]{text, date});
            }
            return text;
        }

        private Image getIcon(Job job) {
            if (job != null) {
                Object property = job.getProperty(IProgressConstants.ICON_PROPERTY);
                if (property instanceof ImageDescriptor) {
                    return this.manager.createImage((ImageDescriptor)property);
                }
                if (property instanceof URL) {
                    return this.manager.createImage(ImageDescriptor.createFromURL((URL)((URL)property)));
                }
                return ProgressManager.getInstance().getIconFor(job);
            }
            return null;
        }

        public boolean isLabelProperty(Object element, String property) {
            return false;
        }

        public void removeListener(ILabelProviderListener listener) {
        }
    }
}

