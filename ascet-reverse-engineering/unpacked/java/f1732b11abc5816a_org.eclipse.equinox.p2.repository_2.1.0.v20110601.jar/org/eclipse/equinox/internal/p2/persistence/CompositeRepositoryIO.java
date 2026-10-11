/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.OperationCanceledException
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.equinox.internal.p2.core.Activator
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.p2.core.ProvisionException
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.persistence;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.URL;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.OperationCanceledException;
import org.eclipse.core.runtime.Status;
import org.eclipse.equinox.internal.p2.core.Activator;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.persistence.CompositeParser;
import org.eclipse.equinox.internal.p2.persistence.CompositeRepositoryState;
import org.eclipse.equinox.internal.p2.persistence.CompositeWriter;
import org.eclipse.equinox.internal.p2.persistence.Messages;
import org.eclipse.equinox.p2.core.ProvisionException;
import org.eclipse.osgi.util.NLS;

public class CompositeRepositoryIO {
    public void write(CompositeRepositoryState repository, OutputStream output, String type) {
        BufferedOutputStream bufferedOutput = null;
        try {
            try {
                bufferedOutput = new BufferedOutputStream(output);
                CompositeWriter repositoryWriter = new CompositeWriter((OutputStream)bufferedOutput, type);
                repositoryWriter.write(repository);
            }
            finally {
                if (bufferedOutput != null) {
                    ((OutputStream)bufferedOutput).close();
                }
            }
        }
        catch (IOException ioe) {
            ioe.printStackTrace();
        }
    }

    public CompositeRepositoryState read(URL location, InputStream input, String type, IProgressMonitor monitor) throws ProvisionException {
        CompositeRepositoryState compositeRepositoryState;
        block12: {
            BufferedInputStream bufferedInput = null;
            try {
                bufferedInput = new BufferedInputStream(input);
                CompositeParser repositoryParser = new CompositeParser(Activator.getContext(), "org.eclipse.equinox.p2.core", type);
                repositoryParser.setErrorContext(location.toExternalForm());
                repositoryParser.parse(input);
                IStatus result = repositoryParser.getStatus();
                switch (result.getSeverity()) {
                    case 8: {
                        throw new OperationCanceledException();
                    }
                    case 4: {
                        throw new ProvisionException(result);
                    }
                    case 1: 
                    case 2: {
                        LogHelper.log((IStatus)result);
                    }
                }
                CompositeRepositoryState repositoryState = repositoryParser.getRepositoryState();
                if (repositoryState == null) {
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.core", 1002, Messages.io_parseError, null));
                }
                compositeRepositoryState = repositoryState;
                if (bufferedInput == null) break block12;
            }
            catch (Throwable throwable) {
                try {
                    if (bufferedInput != null) {
                        bufferedInput.close();
                    }
                    throw throwable;
                }
                catch (IOException ioe) {
                    String msg = NLS.bind((String)Messages.io_failedRead, (Object)location);
                    throw new ProvisionException((IStatus)new Status(4, "org.eclipse.equinox.p2.core", 1002, msg, (Throwable)ioe));
                }
            }
            bufferedInput.close();
        }
        return compositeRepositoryState;
    }
}

