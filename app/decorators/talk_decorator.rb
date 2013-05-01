class TalkDecorator < SimpleDelegator
  def initializer(talk)
    __setobj__(talk)
  end

  def duration
    "#{__getobj__.duration} minutes"
  end
end
