/*
 * Decompiled with CFR 0.152.
 * 
 * Could not load the following classes:
 *  org.apache.tools.ant.Task
 *  org.apache.tools.ant.types.PatternSet$NameEntry
 *  org.apache.tools.ant.types.ResourceCollection
 *  org.apache.tools.ant.types.resources.Files
 *  org.apache.tools.ant.types.resources.Union
 */
package org.eclipse.pde.internal.build.tasks;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.Reader;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Iterator;
import org.apache.tools.ant.Task;
import org.apache.tools.ant.types.PatternSet;
import org.apache.tools.ant.types.ResourceCollection;
import org.apache.tools.ant.types.resources.Files;
import org.apache.tools.ant.types.resources.Union;

public class CompileErrorTask
extends Task {
    private static final Object LOCK = new Object();
    private static final String NEW_LINE = System.getProperty("line.separator");
    private static final String ANT_PREFIX = "${";
    private final Files problemFiles = new Files();
    private String logFile = null;
    private String bundle = null;

    /*
     * WARNING - Removed try catching itself - possible behaviour change.
     */
    public void execute() {
        if (this.logFile == null || this.logFile.startsWith(ANT_PREFIX) || this.problemFiles.size() == 0) {
            return;
        }
        Union union = new Union((ResourceCollection)this.problemFiles);
        String[] prereqFiles = union.list();
        ArrayList<String> problems = new ArrayList<String>();
        BufferedReader reader = null;
        int i = 0;
        while (i < prereqFiles.length) {
            block18: {
                File file = new File(prereqFiles[i]);
                try {
                    try {
                        reader = new BufferedReader(new FileReader(file));
                        String line = reader.readLine();
                        if (line != null) {
                            problems.add(line);
                        }
                    }
                    catch (IOException iOException) {
                        this.close(reader);
                        break block18;
                    }
                }
                catch (Throwable throwable) {
                    this.close(reader);
                    throw throwable;
                }
                this.close(reader);
            }
            ++i;
        }
        if (problems.size() > 0) {
            File log = new File(this.logFile);
            if (!log.getParentFile().exists()) {
                log.getParentFile().mkdirs();
            }
            Object object = LOCK;
            synchronized (object) {
                block20: {
                    FileWriter writer = null;
                    try {
                        try {
                            writer = new FileWriter(log, true);
                            writer.write(String.valueOf(this.bundle) + ": the following prerequisites contain compile errors" + NEW_LINE);
                            Iterator iterator = problems.iterator();
                            while (iterator.hasNext()) {
                                writer.write("\t");
                                writer.write((String)iterator.next());
                                writer.write(NEW_LINE);
                            }
                        }
                        catch (IOException iOException) {
                            this.close(writer);
                            break block20;
                        }
                    }
                    catch (Throwable throwable) {
                        this.close(writer);
                        throw throwable;
                    }
                    this.close(writer);
                }
            }
        }
    }

    private void close(Object o) {
        if (o == null) {
            return;
        }
        try {
            if (o instanceof Reader) {
                ((Reader)o).close();
            }
            if (o instanceof Writer) {
                ((Writer)o).close();
            }
        }
        catch (IOException iOException) {}
    }

    public void setBundle(String bundle) {
        this.bundle = bundle;
    }

    public void setLog(String logFile) {
        this.logFile = logFile;
    }

    public PatternSet.NameEntry createInclude() {
        return this.problemFiles.createInclude();
    }
}

