/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.osgi.util.NLS
 */
package org.eclipse.equinox.internal.p2.repository.helpers;

import java.io.File;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.repository.helpers.Messages;
import org.eclipse.equinox.p2.repository.IRepository;
import org.eclipse.osgi.util.NLS;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class RepositoryHelper {
    protected static final String FILE_SCHEME = "file";

    public static URI localRepoURIHelper(URI location) {
        if (location == null) {
            return null;
        }
        if (location.getScheme() == null) {
            location = new File(location.getPath()).getAbsoluteFile().toURI();
        } else if (location.getScheme().length() == 1) {
            location = new File(URIUtil.toUnencodedString((URI)location)).toURI();
        } else if (!FILE_SCHEME.equalsIgnoreCase(location.getScheme())) {
            return location;
        }
        String lowerCase = location.toString().toLowerCase();
        if (lowerCase.endsWith(".jar") || lowerCase.endsWith(".zip")) {
            return URIUtil.toJarURI((URI)location, null);
        }
        return location;
    }

    public static <T> IRepository<T> validDestinationRepository(IRepository<T> repository) {
        if (!repository.isModifiable()) {
            throw new IllegalStateException(NLS.bind((String)Messages.DestinationNotModifiable, (Object)repository.getLocation()));
        }
        return repository;
    }

    public static IStatus checkRepositoryLocationSyntax(URI location) {
        if (location == null) {
            throw new IllegalArgumentException("Location cannot be null");
        }
        if (!location.isAbsolute()) {
            return new Status(4, "org.eclipse.equinox.p2.repository", Messages.locationMustBeAbsolute);
        }
        try {
            new URL(location.getScheme(), "dummy.com", -1, "dummy.txt");
        }
        catch (MalformedURLException malformedURLException) {
            return new Status(4, "org.eclipse.equinox.p2.repository", Messages.schemeNotSupported);
        }
        return Status.OK_STATUS;
    }
}

