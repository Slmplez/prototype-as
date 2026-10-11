/*
 * Decompiled with CFR 0.152.
 */
package org.sat4j.reader;

import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.PrintWriter;
import java.net.URL;
import java.util.zip.GZIPInputStream;
import org.sat4j.reader.ParseFormatException;
import org.sat4j.specs.ContradictionException;
import org.sat4j.specs.IProblem;

public abstract class Reader {
    private boolean verbose = false;

    public IProblem parseInstance(String string) throws FileNotFoundException, ParseFormatException, IOException, ContradictionException {
        InputStream inputStream = null;
        try {
            IProblem iProblem;
            inputStream = string.startsWith("http://") ? new URL(string).openStream() : new FileInputStream(string);
            if (string.endsWith(".gz")) {
                inputStream = new GZIPInputStream(inputStream);
            }
            IProblem iProblem2 = iProblem = this.parseInstance(inputStream);
            return iProblem2;
        }
        catch (FileNotFoundException fileNotFoundException) {
            throw fileNotFoundException;
        }
        catch (ParseFormatException parseFormatException) {
            throw parseFormatException;
        }
        catch (IOException iOException) {
            throw iOException;
        }
        catch (ContradictionException contradictionException) {
            throw contradictionException;
        }
        finally {
            if (inputStream != null) {
                inputStream.close();
            }
        }
    }

    public IProblem parseInstance(InputStream inputStream) throws ParseFormatException, ContradictionException, IOException {
        return this.parseInstance(new InputStreamReader(inputStream));
    }

    public abstract IProblem parseInstance(java.io.Reader var1) throws ParseFormatException, ContradictionException, IOException;

    @Deprecated
    public abstract String decode(int[] var1);

    public abstract void decode(int[] var1, PrintWriter var2);

    public boolean isVerbose() {
        return this.verbose;
    }

    public void setVerbosity(boolean bl) {
        this.verbose = bl;
    }
}

