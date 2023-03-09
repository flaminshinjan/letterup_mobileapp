//
//  DashBoardView.swift
//  letter__up
//
//  Created by Shinjan Patra on 09/03/23.
//

import SwiftUI

struct Job: Identifiable {
    let id = UUID()
    let title: String
    let company: String
    let location: String
    let date: String
    let image: String
}

struct DashboardView: View {
    let jobs = [
        Job(title: "Software Development Engineer Intern", company: "Google", location: "Pune, IN", date: "2 hours ago", image: "google"),
        Job(title: "iOS Developer Intern", company: "Apple", location: "Bangalore, IN", date: "5 hours ago", image: "apple"),
        Job(title: "Frontend Developer Intern", company: "Facebook", location: "Mumbai, IN", date: "1 day ago", image: "facebook")
    ]
    
    var body: some View {
        NavigationView {
            List(jobs) { job in
                JobRow(job: job)
            }
            .navigationBarTitle(Text("Internships Dashboard"))
        }
    }
}

struct JobRow: View {
    let job: Job
    
    var body: some View {
        ZStack {
            
            HStack(alignment: .center, spacing: 10) {
                Image(job.image)
                    .resizable()
                    .scaledToFill()
                    .frame(width: 60, height: 60)
                    .cornerRadius(10)
                VStack(alignment: .leading, spacing: 5) {
                    Text(job.title)
                        .font(.headline)
                    Text(job.company)
                        .font(.subheadline)
                    Text(job.location)
                        .font(.subheadline)
                }
                Spacer()
                VStack(alignment: .trailing, spacing: 5) {
                    Text(job.date)
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    Button(action: {
                        
                    }) {
                        Text("Apply")
                            .font(.subheadline)
                            .padding(.horizontal, 10)
                            .padding(.vertical, 5)
                            .foregroundColor(.white)
                            .background(Color.blue)
                            .cornerRadius(5)
                    }
                }
            }
            .padding(.vertical, 10)
            
        }
        
    }
}

struct DashboardView_Previews: PreviewProvider {
    static var previews: some View {
        DashboardView()
    }
}

