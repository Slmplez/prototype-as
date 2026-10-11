/*
 * Decompiled with CFR 0.152.
 */
package org.eclipse.equinox.internal.p2.jarprocessor;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import org.eclipse.equinox.internal.p2.jarprocessor.StreamProcessorJob;

public class StreamProcessor {
    private static final String JOBS = "org.eclipse.core.runtime.jobs.Job";
    public static final String STREAM_PROCESSOR = "Stream Processor";
    public static final String STDERR = "STDERR";
    public static final String STDOUT = "STDOUT";
    private static boolean haveJobs = false;

    static {
        try {
            haveJobs = Class.forName(JOBS) != null;
        }
        catch (ClassNotFoundException classNotFoundException) {}
    }

    public static void start(final InputStream is, final String name, final boolean verbose) {
        if (haveJobs) {
            new StreamProcessorJob(is, name, verbose).schedule();
        } else {
            Thread job = new Thread(STREAM_PROCESSOR){

                public void run() {
                    StreamProcessor.run(is, name, verbose);
                }
            };
            job.start();
        }
    }

    public static void run(InputStream inputStream, String name, boolean verbose) {
        try {
            String s;
            InputStreamReader isr = new InputStreamReader(inputStream);
            BufferedReader br = new BufferedReader(isr);
            while ((s = br.readLine()) != null) {
                if (!verbose) continue;
                if (STDERR.equals(name)) {
                    System.err.println(String.valueOf(name) + ": " + s);
                    continue;
                }
                System.out.println(String.valueOf(name) + ": " + s);
            }
        }
        catch (IOException e) {
            e.printStackTrace();
        }
    }
}

