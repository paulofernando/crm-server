module Types
    module Enums
      class Role < Types::BaseEnum
        description 'All available court roles'
  
        value('Acussed', "The person against whom a criminal case is brought. Sometimes referred to as the defendant")
        value('Judge', "The person who hears cases and makes decisions in the County Court and Supreme Court. If a judge and a jury hear the case, the judge will be responsible for directing the jury about the law. If the accused is found guilty, the judge will impose the sentence")
        value('Barrister', "A legal advocate who is briefed by a solicitor to present the defence or prosecution case in court")
        value('Prosecutor', "The person who appears in court to present the case against the defendant in a criminal hearing. Cases in the Magistrates' Court and Children's Court are usually prosecuted by a police officer. Cases in the higher courts are usually prosecuted by the Office of Public Prosecutions")
      end
    end
end