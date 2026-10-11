/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.jobs.Job
 *  org.eclipse.jface.dialogs.Dialog
 *  org.eclipse.jface.resource.JFaceResources
 *  org.eclipse.osgi.signedcontent.SignedContent
 *  org.eclipse.osgi.signedcontent.SignedContentFactory
 *  org.eclipse.osgi.signedcontent.SignerInfo
 *  org.eclipse.osgi.util.NLS
 *  org.eclipse.swt.custom.StyledText
 *  org.eclipse.swt.graphics.Drawable
 *  org.eclipse.swt.graphics.GC
 *  org.eclipse.swt.graphics.Point
 *  org.eclipse.swt.layout.GridData
 *  org.eclipse.swt.layout.GridLayout
 *  org.eclipse.swt.widgets.Composite
 *  org.eclipse.swt.widgets.Control
 *  org.eclipse.swt.widgets.Label
 *  org.eclipse.swt.widgets.Layout
 *  org.eclipse.swt.widgets.Text
 *  org.osgi.framework.BundleContext
 *  org.osgi.framework.ServiceReference
 */
package org.eclipse.ui.internal.about;

import java.io.IOException;
import java.security.GeneralSecurityException;
import java.security.cert.Certificate;
import java.security.cert.X509Certificate;
import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.StringTokenizer;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.jobs.Job;
import org.eclipse.jface.dialogs.Dialog;
import org.eclipse.jface.resource.JFaceResources;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.eclipse.osgi.signedcontent.SignerInfo;
import org.eclipse.osgi.util.NLS;
import org.eclipse.swt.custom.StyledText;
import org.eclipse.swt.graphics.Drawable;
import org.eclipse.swt.graphics.GC;
import org.eclipse.swt.graphics.Point;
import org.eclipse.swt.layout.GridData;
import org.eclipse.swt.layout.GridLayout;
import org.eclipse.swt.widgets.Composite;
import org.eclipse.swt.widgets.Control;
import org.eclipse.swt.widgets.Label;
import org.eclipse.swt.widgets.Layout;
import org.eclipse.swt.widgets.Text;
import org.eclipse.ui.PlatformUI;
import org.eclipse.ui.internal.WorkbenchMessages;
import org.eclipse.ui.internal.WorkbenchPlugin;
import org.eclipse.ui.internal.about.AboutBundleData;
import org.eclipse.ui.statushandlers.StatusManager;
import org.osgi.framework.BundleContext;
import org.osgi.framework.ServiceReference;

public class BundleSigningInfo {
    private Composite composite;
    private Text date;
    private StyledText certificate;
    private AboutBundleData data;
    static /* synthetic */ Class class$0;

    public void setData(AboutBundleData data) {
        this.data = data;
        this.startJobs();
    }

    public Control createContents(Composite parent) {
        this.composite = new Composite(parent, 2048);
        this.composite.setLayoutData((Object)new GridData(4, 4, true, true));
        GridLayout layout = new GridLayout(2, false);
        layout.marginHeight = 0;
        layout.marginWidth = 0;
        this.composite.setLayout((Layout)layout);
        Label label = new Label(this.composite, 0);
        label.setText(WorkbenchMessages.BundleSigningTray_Signing_Date);
        GridData data = new GridData(4, 1, true, false);
        this.date = new Text(this.composite, 8);
        GC gc = new GC((Drawable)this.date);
        gc.setFont(JFaceResources.getDialogFont());
        Point size = gc.stringExtent(DateFormat.getDateTimeInstance().format(new Date()));
        data.widthHint = size.x;
        gc.dispose();
        this.date.setText(WorkbenchMessages.BundleSigningTray_Working);
        this.date.setLayoutData((Object)data);
        label = new Label(this.composite, 0);
        label.setText(WorkbenchMessages.BundleSigningTray_Signing_Certificate);
        data = new GridData(1, 1, true, false);
        data.horizontalSpan = 2;
        data = new GridData(4, 4, true, true);
        data.horizontalSpan = 2;
        this.certificate = new StyledText(this.composite, 74);
        this.certificate.setText(WorkbenchMessages.BundleSigningTray_Working);
        this.certificate.setLayoutData((Object)data);
        Dialog.applyDialogFont((Control)this.composite);
        this.startJobs();
        return this.composite;
    }

    private void startJobs() {
        ServiceReference factoryRef;
        if (!this.isOpen()) {
            return;
        }
        this.certificate.setText(WorkbenchMessages.BundleSigningTray_Working);
        this.date.setText(WorkbenchMessages.BundleSigningTray_Working);
        final BundleContext bundleContext = WorkbenchPlugin.getDefault().getBundleContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        if ((factoryRef = bundleContext.getServiceReference(clazz.getName())) == null) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.BundleSigningTray_Cant_Find_Service), 1);
            return;
        }
        final SignedContentFactory contentFactory = (SignedContentFactory)bundleContext.getService(factoryRef);
        if (contentFactory == null) {
            StatusManager.getManager().handle((IStatus)new Status(2, WorkbenchPlugin.PI_WORKBENCH, WorkbenchMessages.BundleSigningTray_Cant_Find_Service), 1);
            return;
        }
        final AboutBundleData myData = this.data;
        final Job signerJob = new Job(NLS.bind((String)WorkbenchMessages.BundleSigningTray_Determine_Signer_For, (Object)myData.getId())){

            protected IStatus run(IProgressMonitor monitor) {
                String[] signingInfo = new String[]{WorkbenchMessages.BundleSigningTray_Unsigned, WorkbenchMessages.BundleSigningTray_Unsigned};
                try {
                    if (myData != BundleSigningInfo.this.data) {
                        return Status.OK_STATUS;
                    }
                    SignedContent signedContent = contentFactory.getSignedContent(myData.getBundle());
                    if (myData != BundleSigningInfo.this.data) {
                        return Status.OK_STATUS;
                    }
                    SignerInfo[] signers = signedContent.getSignerInfos();
                    if (!BundleSigningInfo.this.isOpen() && BundleSigningInfo.this.data == myData) {
                        return Status.OK_STATUS;
                    }
                    if (signers.length > 0) {
                        Properties[] certs = BundleSigningInfo.this.parseCerts(signers[0].getCertificateChain());
                        if (certs.length == 0) {
                            signingInfo[0] = WorkbenchMessages.BundleSigningTray_Unknown;
                        } else {
                            StringBuffer buffer = new StringBuffer();
                            Iterator i = certs[0].entrySet().iterator();
                            while (i.hasNext()) {
                                Map.Entry entry = i.next();
                                buffer.append(entry.getKey());
                                buffer.append('=');
                                buffer.append(entry.getValue());
                                if (!i.hasNext()) continue;
                                buffer.append('\n');
                            }
                            signingInfo[0] = buffer.toString();
                        }
                        Date signDate = signedContent.getSigningTime(signers[0]);
                        signingInfo[1] = signDate != null ? DateFormat.getDateTimeInstance().format(signDate) : WorkbenchMessages.BundleSigningTray_Unknown;
                    }
                }
                catch (IOException e) {
                    StatusManager.getManager().handle((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, e.getMessage(), (Throwable)e), 1);
                }
                catch (GeneralSecurityException e) {
                    StatusManager.getManager().handle((IStatus)new Status(4, WorkbenchPlugin.PI_WORKBENCH, e.getMessage(), (Throwable)e), 1);
                }
                PlatformUI.getWorkbench().getDisplay().asyncExec(new Runnable(this, myData, signingInfo){
                    final /* synthetic */ 1 this$1;
                    private final /* synthetic */ AboutBundleData val$myData;
                    private final /* synthetic */ String[] val$signingInfo;
                    {
                        this.this$1 = var1_1;
                        this.val$myData = aboutBundleData;
                        this.val$signingInfo = stringArray;
                    }

                    public void run() {
                        if (!BundleSigningInfo.access$1(1.access$0(this.this$1)) && BundleSigningInfo.access$0(1.access$0(this.this$1)) != this.val$myData) {
                            return;
                        }
                        BundleSigningInfo.access$3(1.access$0(this.this$1)).setText(this.val$signingInfo[0]);
                        BundleSigningInfo.access$4(1.access$0(this.this$1)).setText(this.val$signingInfo[1]);
                    }
                });
                return Status.OK_STATUS;
            }

            static /* synthetic */ BundleSigningInfo access$0(1 var0) {
                return var0.BundleSigningInfo.this;
            }
        };
        signerJob.setSystem(true);
        signerJob.belongsTo((Object)signerJob);
        signerJob.schedule();
        Job cleanup = new Job(WorkbenchMessages.BundleSigningTray_Unget_Signing_Service){

            protected IStatus run(IProgressMonitor monitor) {
                try {
                    3.getJobManager().join((Object)signerJob, monitor);
                }
                catch (OperationCanceledException operationCanceledException) {
                }
                catch (InterruptedException interruptedException) {}
                bundleContext.ungetService(factoryRef);
                return Status.OK_STATUS;
            }
        };
        cleanup.setSystem(true);
        cleanup.schedule();
    }

    private boolean isOpen() {
        return this.certificate != null && !this.certificate.isDisposed();
    }

    private Properties[] parseCerts(Certificate[] chain) {
        ArrayList<Properties> certs = new ArrayList<Properties>(chain.length);
        int i = 0;
        while (i < chain.length) {
            Properties cert;
            if (chain[i] instanceof X509Certificate && (cert = this.parseCert(((X509Certificate)chain[i]).getSubjectDN().getName())) != null) {
                certs.add(cert);
            }
            ++i;
        }
        return certs.toArray(new Properties[certs.size()]);
    }

    private Properties parseCert(String certString) {
        StringTokenizer toker = new StringTokenizer(certString, ",");
        Properties cert = new Properties();
        while (toker.hasMoreTokens()) {
            String pair = toker.nextToken();
            int idx = pair.indexOf(61);
            if (idx <= 0 || idx >= pair.length() - 2) continue;
            String key = pair.substring(0, idx).trim();
            String value = pair.substring(idx + 1).trim();
            if (value.length() > 2) {
                if (value.charAt(0) == '\"') {
                    value = value.substring(1);
                }
                if (value.charAt(value.length() - 1) == '\"') {
                    value = value.substring(0, value.length() - 1);
                }
            }
            cert.setProperty(key, value);
        }
        return cert;
    }

    public void dispose() {
        this.composite.dispose();
    }

    static /* synthetic */ StyledText access$3(BundleSigningInfo bundleSigningInfo) {
        return bundleSigningInfo.certificate;
    }

    static /* synthetic */ Text access$4(BundleSigningInfo bundleSigningInfo) {
        return bundleSigningInfo.date;
    }
}

