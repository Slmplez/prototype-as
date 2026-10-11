/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.eclipse.core.runtime.Assert
 *  org.eclipse.core.runtime.IProgressMonitor
 *  org.eclipse.core.runtime.IStatus
 *  org.eclipse.core.runtime.Status
 *  org.eclipse.core.runtime.URIUtil
 *  org.eclipse.equinox.internal.p2.core.helpers.LogHelper
 *  org.eclipse.equinox.internal.p2.core.helpers.Tracing
 *  org.eclipse.equinox.internal.p2.repository.DownloadStatus
 *  org.eclipse.equinox.internal.p2.repository.Transport
 *  org.eclipse.equinox.p2.repository.IRepository
 */
package org.eclipse.equinox.internal.p2.artifact.repository;

import java.io.FileNotFoundException;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Arrays;
import java.util.Comparator;
import java.util.GregorianCalendar;
import java.util.Locale;
import java.util.Random;
import java.util.Timer;
import java.util.TimerTask;
import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import org.eclipse.core.runtime.Assert;
import org.eclipse.core.runtime.IProgressMonitor;
import org.eclipse.core.runtime.IStatus;
import org.eclipse.core.runtime.Status;
import org.eclipse.core.runtime.URIUtil;
import org.eclipse.equinox.internal.p2.artifact.repository.Activator;
import org.eclipse.equinox.internal.p2.core.helpers.LogHelper;
import org.eclipse.equinox.internal.p2.core.helpers.Tracing;
import org.eclipse.equinox.internal.p2.repository.DownloadStatus;
import org.eclipse.equinox.internal.p2.repository.Transport;
import org.eclipse.equinox.p2.repository.IRepository;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NodeList;
import org.xml.sax.InputSource;

/*
 * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
 */
public class MirrorSelector {
    private static final double LOG2 = Math.log(2.0);
    URI baseURI;
    MirrorInfo[] mirrors;
    private final IRepository<?> repository;
    private final Random random = new Random();
    private final Transport transport;

    public MirrorSelector(IRepository<?> repository, Transport transport) {
        this.repository = repository;
        this.transport = transport;
        try {
            String base = (String)repository.getProperties().get("p2.mirrorsBaseURL");
            if (base != null) {
                this.baseURI = new URI(base);
            } else {
                URI repositoryLocation = repository.getLocation();
                if (repositoryLocation != null) {
                    this.baseURI = repositoryLocation;
                }
            }
        }
        catch (URISyntaxException e) {
            this.log(new StringBuffer("Error initializing mirrors for: ").append(repository.getLocation()).toString(), e);
        }
    }

    private MirrorInfo[] computeMirrors(String mirrorsURL, IProgressMonitor monitor) {
        Document document;
        block7: {
            String timeZone;
            String countryCode = Activator.getContext().getProperty("eclipse.p2.countryCode");
            if (countryCode == null || countryCode.trim().length() == 0) {
                countryCode = Locale.getDefault().getCountry().toLowerCase();
            }
            if ((timeZone = Activator.getContext().getProperty("eclipse.p2.timeZone")) == null || timeZone.trim().length() == 0) {
                timeZone = Integer.toString(new GregorianCalendar().get(15) / 3600000);
            }
            mirrorsURL = mirrorsURL.indexOf(63) != -1 ? new StringBuffer(String.valueOf(mirrorsURL)).append('&').toString() : new StringBuffer(String.valueOf(mirrorsURL)).append('?').toString();
            mirrorsURL = new StringBuffer(String.valueOf(mirrorsURL)).append("countryCode=").append(countryCode).append("&timeZone=").append(timeZone).append("&format=xml").toString();
            DocumentBuilderFactory domFactory = DocumentBuilderFactory.newInstance();
            DocumentBuilder builder = domFactory.newDocumentBuilder();
            document = null;
            InputSource input = new InputSource(mirrorsURL);
            input.setByteStream(this.transport.stream(URIUtil.fromString((String)mirrorsURL), monitor));
            document = builder.parse(input);
            if (document != null) break block7;
            return null;
        }
        try {
            NodeList mirrorNodes = document.getElementsByTagName("mirror");
            int mirrorCount = mirrorNodes.getLength();
            MirrorInfo[] infos = new MirrorInfo[mirrorCount + 1];
            int i = 0;
            while (i < mirrorCount) {
                Element mirrorNode = (Element)mirrorNodes.item(i);
                String infoURL = mirrorNode.getAttribute("url");
                infos[i] = new MirrorInfo(infoURL, i);
                ++i;
            }
            infos[mirrorCount] = new MirrorInfo(this.baseURI.toString(), mirrorCount);
            return infos;
        }
        catch (Exception e) {
            if (mirrorsURL != null && (mirrorsURL.startsWith("http://") || mirrorsURL.startsWith("https://") || mirrorsURL.startsWith("file://") || mirrorsURL.startsWith("ftp://") || mirrorsURL.startsWith("jar://"))) {
                this.log(new StringBuffer("Error processing mirrors URL: ").append(mirrorsURL).toString(), e);
            }
            return null;
        }
    }

    public synchronized URI getMirrorLocation(URI inputLocation, IProgressMonitor monitor) {
        Assert.isNotNull((Object)inputLocation);
        if (this.baseURI == null) {
            return inputLocation;
        }
        URI relativeLocation = this.baseURI.relativize(inputLocation);
        if (relativeLocation == null || relativeLocation.isAbsolute()) {
            return inputLocation;
        }
        MirrorInfo selectedMirror = this.selectMirror(monitor);
        if (selectedMirror == null) {
            return inputLocation;
        }
        if (Tracing.DEBUG_MIRRORS) {
            Tracing.debug((String)new StringBuffer("Selected mirror for artifact ").append(inputLocation).append(": ").append(selectedMirror).toString());
        }
        try {
            return new URI(new StringBuffer(String.valueOf(selectedMirror.locationString)).append(relativeLocation.getPath()).toString());
        }
        catch (URISyntaxException e) {
            this.log(new StringBuffer("Unable to make location ").append(inputLocation).append(" relative to mirror ").append(selectedMirror.locationString).toString(), e);
            return inputLocation;
        }
    }

    private MirrorInfo[] initMirrors(IProgressMonitor monitor) {
        if (this.mirrors != null) {
            return this.mirrors;
        }
        String mirrorsURL = (String)this.repository.getProperties().get("p2.mirrorsURL");
        if (mirrorsURL != null) {
            this.mirrors = this.computeMirrors(mirrorsURL, monitor);
        }
        return this.mirrors;
    }

    private MirrorInfoComparator getComparator() {
        long maxBytesPerSecond = 0L;
        if (this.mirrors != null) {
            MirrorInfo[] mirrorInfoArray = this.mirrors;
            int n = this.mirrors.length;
            int n2 = 0;
            while (n2 < n) {
                MirrorInfo mi = mirrorInfoArray[n2];
                maxBytesPerSecond = Math.max(maxBytesPerSecond, mi.bytesPerSecond);
                ++n2;
            }
        }
        return new MirrorInfoComparator(maxBytesPerSecond, 0, 1);
    }

    private void log(String message, Throwable exception) {
        LogHelper.log((IStatus)new Status(4, "org.eclipse.equinox.p2.artifact.repository", message, exception));
    }

    public synchronized void reportResult(String toDownload, IStatus result) {
        if (this.mirrors == null) {
            return;
        }
        int i = 0;
        while (i < this.mirrors.length) {
            MirrorInfo mirror = this.mirrors[i];
            if (toDownload.startsWith(mirror.locationString)) {
                if (!result.isOK() && result.getSeverity() != 8) {
                    if (result.getException() instanceof FileNotFoundException) {
                        mirror.incrementFileNotFoundCount();
                    } else {
                        mirror.incrementFailureCount();
                    }
                }
                if (result instanceof DownloadStatus) {
                    long oldRate = mirror.bytesPerSecond;
                    long newRate = ((DownloadStatus)result).getTransferRate();
                    if (oldRate > 0L) {
                        newRate = (oldRate + newRate) / 2L;
                    }
                    mirror.setBytesPerSecond(newRate);
                }
                if (Tracing.DEBUG_MIRRORS) {
                    Tracing.debug((String)new StringBuffer("Updated mirror ").append(mirror).toString());
                }
                return;
            }
            ++i;
        }
    }

    public synchronized boolean hasValidMirror() {
        if (this.mirrors == null || this.mirrors.length == 0) {
            return false;
        }
        Arrays.sort(this.mirrors, this.getComparator());
        return this.mirrors[0].failureCount < 2;
    }

    private MirrorInfo selectMirror(IProgressMonitor monitor) {
        MirrorInfo selected;
        int mirrorCount;
        this.initMirrors(monitor);
        if (this.mirrors == null || (mirrorCount = this.mirrors.length) == 0) {
            return null;
        }
        if (mirrorCount == 1) {
            selected = this.mirrors[0];
        } else {
            int mirrorIndex;
            Arrays.sort(this.mirrors, this.getComparator());
            do {
                int highestMirror;
                int result;
                if ((result = (int)(Math.log(this.random.nextInt(1 << (highestMirror = Math.min(15, mirrorCount))) + 1) / LOG2)) >= highestMirror || result < 0) {
                    result = highestMirror - 1;
                }
                mirrorIndex = highestMirror - 1 - result;
                selected = this.mirrors[mirrorIndex];
            } while (!((double)mirrorIndex <= (double)mirrorCount * 0.5));
        }
        if (selected.failureCount > 1) {
            return null;
        }
        return selected;
    }

    public static class MirrorInfo {
        private static final long PRIMARY_FAILURE_LINGER_TIME = 30000L;
        private static final long SECONDARY_FAILURE_LINGER_TIME = 300000L;
        private static final int ACCEPTABLE_FILE_NOT_FOUND_COUNT = 5;
        private static final Timer resetFailure = new Timer(true);
        long bytesPerSecond;
        int failureCount;
        int fileNotFoundCount;
        int totalFailureCount;
        final int initialRank;
        String locationString;

        public MirrorInfo(String location, int initialRank) {
            this.initialRank = initialRank;
            this.locationString = location;
            if (!this.locationString.endsWith("/")) {
                this.locationString = String.valueOf(this.locationString) + "/";
            }
            this.failureCount = 0;
            this.totalFailureCount = 0;
            this.bytesPerSecond = -1L;
        }

        public synchronized String toString() {
            return "Mirror(" + this.locationString + ',' + this.failureCount + ',' + this.bytesPerSecond + ')';
        }

        public synchronized void decrementFailureCount() {
            if (this.failureCount > 0) {
                --this.failureCount;
            }
        }

        public synchronized void incrementFailureCount() {
            ++this.failureCount;
            ++this.totalFailureCount;
            if (this.totalFailureCount < 3) {
                resetFailure.schedule(new TimerTask(){

                    public void run() {
                        MirrorInfo.this.decrementFailureCount();
                    }
                }, this.totalFailureCount == 1 ? 30000L : 300000L);
            }
        }

        public synchronized void setBytesPerSecond(long newValue) {
            if (newValue <= 0L) {
                newValue = -1L;
            }
            if (newValue > 0L) {
                this.failureCount = 0;
            }
            this.bytesPerSecond = newValue;
        }

        public synchronized long getBytesPerSecond() {
            return this.bytesPerSecond;
        }

        public synchronized void incrementFileNotFoundCount() {
            if (++this.fileNotFoundCount > 5) {
                this.incrementFailureCount();
                this.fileNotFoundCount = 0;
            }
        }
    }

    /*
     * This class specifies class file version 48.0 but uses Java 6 signatures.  Assumed Java 6.
     */
    public static final class MirrorInfoComparator
    implements Comparator<MirrorInfo> {
        static final double WEIGHT_BYTESPERSECOND = 4.0E-5;
        static final double WEIGHT_FAILURECOUNT = 1.75;
        final double qBytesPerSeconds;
        final double qFailureCount;
        final double qRank;
        final double qel;

        public MirrorInfoComparator(long qBytesPerSeconds, int qFailureCount, int qRank) {
            this.qBytesPerSeconds = (double)(qBytesPerSeconds + qBytesPerSeconds / 10L) * 4.0E-5;
            this.qFailureCount = qFailureCount;
            this.qRank = qRank;
            this.qel = Math.sqrt((double)(qBytesPerSeconds * qBytesPerSeconds) + (double)qFailureCount * 1.0 * ((double)qFailureCount * 1.0) + (double)(qRank * qRank));
        }

        @Override
        public int compare(MirrorInfo o1, MirrorInfo o2) {
            if (o1 == o2) {
                return 0;
            }
            double o1_el = Math.sqrt(Math.abs((double)o1.bytesPerSecond * 4.0E-5) * Math.abs((double)o1.bytesPerSecond * 4.0E-5) + (double)o1.failureCount * 1.75 * ((double)o1.failureCount * 1.75) + (double)(o1.initialRank * o1.initialRank));
            double o2_el = Math.sqrt(Math.abs((double)o2.bytesPerSecond * 4.0E-5) * Math.abs((double)o2.bytesPerSecond * 4.0E-5) + (double)o2.failureCount * 1.75 * ((double)o2.failureCount * 1.75) + (double)(o2.initialRank * o2.initialRank));
            double dp_1 = this.qBytesPerSeconds * Math.abs((double)o1.bytesPerSecond * 4.0E-5) + this.qFailureCount * ((double)o1.failureCount * 1.75) + this.qRank * (double)o1.initialRank;
            double dp_2 = this.qBytesPerSeconds * Math.abs((double)o2.bytesPerSecond * 4.0E-5) + this.qFailureCount * ((double)o2.failureCount * 1.75) + this.qRank * (double)o2.initialRank;
            double sim1 = dp_1 / (this.qel * o1_el);
            double sim2 = dp_2 / (this.qel * o2_el);
            return new Double(sim2).compareTo(new Double(sim1));
        }
    }
}

