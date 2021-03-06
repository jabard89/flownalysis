% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/cluster.flow.R
\name{cluster.flow}
\alias{cluster.flow}
\title{Use kmeans clustering to detect subpopulations in a flow cytometry experiment: implements methodology from the flowPeaks package by Ge Y. et al: see citation("flowPeaks")}
\usage{
cluster.flow(flow.df, cluster.on, tol.u = 1, h0.u = 1, h.u = 1.5,
  qc.exp = FALSE, qc.ax1 = NULL, qc.ax2 = NULL)
}
\arguments{
\item{flow.df}{the name of the flow experiment in the form of a dataframe (assumed output from merge_flowSet)}

\item{cluster.on}{the column names to cluster on; currently only clustering on subsets of the data is allowed}

\item{tol.u}{user-defined tolerance for clusters (goes to flowPeaks function); default is 1 (can go from 0 to 1)}

\item{h0.u}{user-defined h0 parameter; default is 1}

\item{h.u}{user-defined h parameter; default is 1.5}

\item{qc.exp}{optional qc experiment to generate a plot for to visually inspect clusters [currently not working]}

\item{qc.ax1}{x axis of qc plot (must be a column name in flow.df)}

\item{qc.ax2}{y axis of qc plot (must be a column name in flow.df)}
}
\value{
the input dataframe flow.df with an additional column called 'cluster' that contains the cluster assignment for each observation
}
\description{
Use kmeans clustering to detect subpopulations in a flow cytometry experiment: implements methodology from the flowPeaks package by Ge Y. et al: see citation("flowPeaks")
}
