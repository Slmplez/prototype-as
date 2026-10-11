/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.MultiStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.helpers.FileUtils
 *  org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper
 *  org.eclipse.osgi.signedcontent.InvalidContentException
 *  org.eclipse.osgi.signedcontent.SignedContent
 *  org.eclipse.osgi.signedcontent.SignedContentEntry
 *  org.eclipse.osgi.signedcontent.SignedContentFactory
 *  org.osgi.framework.BundleContext
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.MultiStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.artifact.repository.Activator;
import org.eclipse.equinox.internal.p2.artifact.repository.Messages;
import org.eclipse.equinox.internal.p2.core.helpers.FileUtils;
import org.eclipse.equinox.internal.p2.core.helpers.ServiceHelper;
import org.eclipse.equinox.internal.provisional.p2.artifact.repository.processing.ProcessingStep;
import org.eclipse.osgi.signedcontent.InvalidContentException;
import org.eclipse.osgi.signedcontent.SignedContent;
import org.eclipse.osgi.signedcontent.SignedContentEntry;
import org.eclipse.osgi.signedcontent.SignedContentFactory;
import org.osgi.framework.BundleContext;

public class SignatureVerifier
extends ProcessingStep {
    private File inputFile;
    private OutputStream tempStream;
    static /* synthetic */ Class class$0;

    public boolean areRequirementsSatisfied() {
        return true;
    }

    public void write(int b) throws IOException {
        this.getOutputStream().write(b);
    }

    public void write(byte[] bytes, int off, int len) throws IOException {
        this.getOutputStream().write(bytes, off, len);
    }

    private OutputStream getOutputStream() throws IOException {
        if (this.tempStream != null) {
            return this.tempStream;
        }
        this.inputFile = File.createTempFile("signatureFile", ".jar");
        this.tempStream = new BufferedOutputStream(new FileOutputStream(this.inputFile));
        return this.tempStream;
    }

    private void verify() throws IOException {
        BufferedInputStream resultStream = null;
        try {
            if (this.tempStream == null) {
                return;
            }
            this.tempStream.close();
            this.setStatus(this.verifyContent());
            resultStream = new BufferedInputStream(new FileInputStream(this.inputFile));
            FileUtils.copyStream((InputStream)resultStream, (boolean)true, (OutputStream)this.getDestination(), (boolean)false);
            resultStream = null;
        }
        finally {
            if (this.inputFile != null) {
                this.inputFile.delete();
            }
            if (resultStream != null) {
                resultStream.close();
            }
        }
    }

    private IStatus verifyContent() throws IOException {
        SignedContent signedContent;
        BundleContext bundleContext = Activator.getContext();
        Class<?> clazz = class$0;
        if (clazz == null) {
            try {
                clazz = class$0 = Class.forName("org.eclipse.osgi.signedcontent.SignedContentFactory");
            }
            catch (ClassNotFoundException classNotFoundException) {
                throw new NoClassDefFoundError(classNotFoundException.getMessage());
            }
        }
        SignedContentFactory verifierFactory = (SignedContentFactory)ServiceHelper.getService((BundleContext)bundleContext, (String)clazz.getName());
        try {
            signedContent = verifierFactory.getSignedContent(this.inputFile);
        }
        catch (GeneralSecurityException e) {
            return new Status(4, "org.eclipse.equinox.p2.artifact.repository", String.valueOf(Messages.SignatureVerification_failedRead) + this.inputFile, (Throwable)e);
        }
        ArrayList<Status> allStatus = new ArrayList<Status>(0);
        SignedContentEntry[] entries = signedContent.getSignedEntries();
        int i = 0;
        while (i < entries.length) {
            try {
                entries[i].verify();
            }
            catch (InvalidContentException e) {
                allStatus.add(new Status(4, "org.eclipse.equinox.p2.artifact.repository", String.valueOf(Messages.SignatureVerification_invalidContent) + entries[i].getName(), (Throwable)e));
            }
            catch (OutOfMemoryError e) {
                allStatus.add(new Status(4, "org.eclipse.equinox.p2.artifact.repository", Messages.SignatureVerifier_OutOfMemory, (Throwable)e));
                break;
            }
            ++i;
        }
        if (allStatus.size() > 0) {
            return new MultiStatus("org.eclipse.equinox.p2.artifact.repository", 4, allStatus.toArray(new IStatus[allStatus.size()]), String.valueOf(Messages.SignatureVerification_invalidFileContent) + this.inputFile, null);
        }
        return Status.OK_STATUS;
    }

    public void close() throws IOException {
        this.verify();
        super.close();
    }
}

